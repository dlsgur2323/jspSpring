package com.jsp.test;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.After;
import org.junit.Before;
import org.junit.jupiter.api.Test;

import com.jsp.dispatcher.HandlerMapper;

class TestHandlerMapper {

	private HandlerMapper handlerMapper;
		
		@Before
		public void init() throws Exception{
			handlerMapper = new HandlerMapper();
		}
		
		@Test
		public void test() {
			fail("Not yet implemented");
		}
	
		@After
		public void complete() {
			
		}

}
