-- Table structure for table `admin_profile`
CREATE TABLE `admin_profile` (
  `id` int(10) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `admin_profile`
INSERT INTO `admin_profile` (`id`, `full_name`, `email`, `mobile`, `address`, `password`, `status`, `created_at`) VALUES
(10, 'Tristan Jorge Cuartero', 'trstnjorge@gmail.com', '9876543210', 'New York', '0192023a7bbd73250516f069df18b500', 1, '2020-06-17 18:38:43.432266'),
(11, 'Jane Smith', 'janesmith@gmail.com', '1234567890', 'Los Angeles', '0192023a7bbd73250516f069df18b500', 1, '2020-06-17 18:39:14.874271'),
(12, 'Alice Johnson', 'alicejohnson@gmail.com', '5555555555', 'San Francisco', '0192023a7bbd73250516f069df18b500', 1, '2020-06-17 18:39:52.830541');

-- Indexes for table `admin_profile`
ALTER TABLE `admin_profile`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT for table `admin_profile`
ALTER TABLE `admin_profile`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
