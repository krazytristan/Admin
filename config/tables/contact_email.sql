-- Table structure for table `contact_email`
CREATE TABLE `contact_email` (
  `id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `contact_email`
INSERT INTO `contact_email` (`id`, `email`) VALUES
(8, 'trstnjorge@gmail.com'),
(9, 'trstnjorge@gmail.com');

-- Indexes for table `contact_email`
ALTER TABLE `contact_email`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT for table `contact_email`
ALTER TABLE `contact_email`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
