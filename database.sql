-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- ����: 127.0.0.1
-- ����� ��������: ��� 07 2017 �., 12:53
-- ������ �������: 10.1.16-MariaDB
-- ������ PHP: 5.6.24

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- ���� ������: `hw_php`
--

-- --------------------------------------------------------

--
-- ��������� ������� `scores`
--

CREATE TABLE `scores` (
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- ��������� ������� `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- ��������� ������� `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- ���� ������ ������� `subjects`
--

INSERT INTO `subjects` (`id`, `name`) VALUES
(2, '���� ������'),
(1, '����������� �������� ���������� ��');

--
-- ������� ���������� ������
--

--
-- ������� ������� `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`student_id`,`subject_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- ������� ������� `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- ������� ������� `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT ��� ���������� ������
--

--
-- AUTO_INCREMENT ��� ������� `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT ��� ������� `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- ����������� �������� ����� ����������� ������
--

--
-- ����������� �������� ����� ������� `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `scores_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
