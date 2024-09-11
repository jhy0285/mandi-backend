package com.tourapi.mandi.domain.course.service;

import com.tourapi.mandi.domain.course.dto.CompletedCourseDto;
import com.tourapi.mandi.domain.course.dto.CompletedCourseListResponseDto;
import com.tourapi.mandi.domain.course.dto.ReviewDto;
import com.tourapi.mandi.domain.course.dto.ReviewListResponseDto;
import com.tourapi.mandi.domain.course.entity.CompletedCourse;
import com.tourapi.mandi.domain.course.repository.CompletedCourseRepository;
import com.tourapi.mandi.domain.course.util.CompletedCourseMapper;
import com.tourapi.mandi.domain.course.util.ReviewMapper;
import com.tourapi.mandi.domain.user.entity.User;
import com.tourapi.mandi.domain.user.service.UserService;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Slf4j
public class CompletedCourseService  {
    private final CompletedCourseRepository completedCourseRepository;
    private final UserService userService;

    @Transactional(readOnly = true)
    public CompletedCourseListResponseDto getCompletedCourses(User user) {
        User existingUser = userService.getExistingUser(user);

        List<CompletedCourse> completedCourses = completedCourseRepository.findByUser(existingUser);

        List<CompletedCourseDto> completedCourseDtos = new ArrayList<>();
        BigDecimal totalDistance = BigDecimal.ZERO;

        for (final CompletedCourse completedCourse : completedCourses) {
            completedCourseDtos.add(CompletedCourseMapper.toCompletedCourseDto(completedCourse));
            totalDistance = totalDistance.add(completedCourse.getCourse().getDistance());
        }

        return CompletedCourseListResponseDto.builder()
                .totalCount(completedCourses.size())
                .totalDistance(totalDistance)
                .completedCourses(completedCourseDtos)
                .build();
    }

    @Transactional(readOnly = true)
    public ReviewListResponseDto getReviews(User user) {
        User existingUser = userService.getExistingUser(user);

        List<CompletedCourse> completedCourses = completedCourseRepository.findByUser(existingUser);

        List<ReviewDto> reviewedCourses = new ArrayList<>();
        List<CompletedCourseDto> notReviewedCourses = new ArrayList<>();

        for (final CompletedCourse completedCourse : completedCourses) {
            if (completedCourse.getIsReviewed().equals(Boolean.TRUE)) {
                reviewedCourses.add(ReviewMapper.toReviewDto(completedCourse));
            } else notReviewedCourses.add(CompletedCourseMapper.toCompletedCourseDto(completedCourse));
        }

        return ReviewListResponseDto.builder()
                .totalCompletedCourseCount(completedCourses.size())
                .totalReviewCount(reviewedCourses.size())
                .reviewedCourses(reviewedCourses)
                .notReviewedCourses(notReviewedCourses)
                .build();
    }
}
