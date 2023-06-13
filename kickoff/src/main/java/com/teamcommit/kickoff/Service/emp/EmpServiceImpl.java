package com.teamcommit.kickoff.Service.emp;

import com.teamcommit.kickoff.Dao.PlaceDAO;
import com.teamcommit.kickoff.Do.BoardDO;
import com.teamcommit.kickoff.Do.EmployerDO;
import com.teamcommit.kickoff.Do.PlaceDO;
import com.teamcommit.kickoff.Do.ReservationDO;
import com.teamcommit.kickoff.Do.UserDO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Service("EmpService")
public class EmpServiceImpl implements EmpService {

    @Autowired
    private EmpMapper empMapper;

    public EmployerDO info_fix(EmployerDO employerDO) { return this.empMapper.info_fix(employerDO); }

    @Override
    public List<BoardDO> getList(String empId) throws Exception{
        return empMapper.getList(empId);
    }

    @Override
    public PlaceDO empFutsalInsert(PlaceDO placeDO) throws Exception {
        return empMapper.empFutsalInsert(placeDO);
    }

    @Override
    public void updateFutsal(PlaceDO placeDO) { empMapper.updateFutsal(placeDO);  }

    @Override
    public List<ReservationDO> selectReservation(ReservationDO reservationDO) throws Exception {
        return empMapper.selectReservation(reservationDO);
    }
    
    @Override
    public List<PlaceDO> empFutsalList(String empId) throws Exception{
        return empMapper.empFutsalList(empId);
    }
    
    @Override
    public PlaceDO selectEmpFutsalFix(int placeId) throws Exception {
        return empMapper.selectEmpFutsalFix(placeId);
    }
    
    @Override
    public void updateEmpFutsalF(PlaceDO placeDO) throws Exception {
        empMapper.updateEmpFutsalF(placeDO);
    }
    
    
    @Override
    public EmployerDO empInfoCheck(EmployerDO employerDO) throws Exception {
    	return empMapper.empInfoCheck(employerDO);
    }
    
    @Override
    public EmployerDO empInfo(String empId) throws Exception {
    	return empMapper.empInfo(empId);
    }
    
    @Override
    public void updatePw(EmployerDO employerDO) throws Exception {
    	empMapper.updatePw(employerDO);
    }
    
    @Override
    public void updateEmpInfo(EmployerDO employerDO) throws Exception {
    	empMapper.updateEmpInfo(employerDO);
    }

	@Override
	public void deleteEmp(EmployerDO employerDO) throws Exception {
		empMapper.deleteEmp(employerDO);
		
	}


}