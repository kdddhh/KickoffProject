package com.teamcommit.kickoff.Service.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamcommit.kickoff.Do.BoardDO;
import com.teamcommit.kickoff.Do.GameDO;
import com.teamcommit.kickoff.Do.ReservationDO;
import com.teamcommit.kickoff.Do.TeamDO;
import com.teamcommit.kickoff.Do.UserDO;

@Service("mypageService")
public class MypageServiceImpl implements MypageService {

    @Autowired
    private MypageMapper mypageMapper;
    
    @Override
    public List<ReservationDO> myReservationList(String userId) throws Exception {
        return mypageMapper.myReservationList(userId);
    }
    
    @Override
    public List<ReservationDO> empReservationList(String userId) throws Exception {
        return mypageMapper.empReservationList(userId);
    }
    
    @Override
    public void updateCancel(int reservationNo) throws Exception {
        mypageMapper.updateCancel(reservationNo);
    }
    
    @Override
    public List<BoardDO> myBoardList(String userId) throws Exception {
    	return mypageMapper.myBoardList(userId);
    }
    
    @Override
    public UserDO userInfoCheck(UserDO user) throws Exception {
    	return mypageMapper.userInfoCheck(user);
    }
    
    @Override
    public UserDO userInfo(String userId) throws Exception {
    	return mypageMapper.userInfo(userId);
    }
    
    @Override
    public void updatePw(UserDO user) throws Exception {
    	mypageMapper.updatePw(user);
    }
    
    @Override
    public void updateUserInfo(UserDO userDO) throws Exception {
    	mypageMapper.updateUserInfo(userDO);
    }
    
    @Override
    public List<TeamDO> myTeamList(String userId) throws Exception {
    	return mypageMapper.myTeamList(userId);
    }
    
    public void userDelete(String userId) throws Exception {
    	mypageMapper.userDelete(userId);
    }
    
    @Override
    public List<GameDO> myGameRecordList(String userId) throws Exception {
    	return mypageMapper.myGameRecordList(userId);
    }
    
    @Override
    public GameDO getGameRecord(int gameSeqno) throws Exception {
        return mypageMapper.getGameRecord(gameSeqno);
    }
    
    @Override
    public void updateGameScore(GameDO gameDO) throws Exception {
      mypageMapper.updateGameScore(gameDO);
    }
}
