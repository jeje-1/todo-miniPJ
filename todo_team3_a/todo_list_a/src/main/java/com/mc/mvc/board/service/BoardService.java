package com.mc.mvc.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.mc.mvc.board.dto.Board;
import com.mc.mvc.common.file.FileInfo;
import com.mc.mvc.member.dto.Member;

public interface BoardService {

   void insertBoard(Board board);
   
   Map<String, Object> selectBoardList(int page, String userId);

   Map<String, Object> selectBoardContentByBdIdx(int bdIdx);

   void deleteBoardByBdIdx(int bdIdx);

   void updateBoard(Board board);


}