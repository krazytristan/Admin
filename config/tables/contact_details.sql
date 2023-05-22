-- Table structure for table `contact_details`
CREATE TABLE `contact_details` (
  `id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `google_map` text NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `google_plus` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `contact_details`
INSERT INTO `contact_details` (`id`, `email`, `mobile`, `address`, `google_map`, `facebook`, `google_plus`, `twitter`, `linkedin`, `youtube`, `instagram`) VALUES
(1, 'trstnjorge@gmail.com', '1234567890', 'Noida, Uttar Pradesh, India', 'Enter You Google Map Code', '', '', '', '', '', '');

-- Indexes for table `contact_details`
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT for table `contact_details`
ALTER TABLE `contact_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
