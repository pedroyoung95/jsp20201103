package chap14;

import java.time.LocalDateTime;

public class Employee {
	private int eno;
	private String ename;
	private LocalDateTime hiredate;
	private int salary;
	private String dname;
	
	public LocalDateTime getHiredate() {
		return hiredate;
	}
	public void setHiredate(LocalDateTime hiredate) {
		this.hiredate = hiredate;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public int getEno() {
		return eno;
	}
	public void setEno(int eno) {
		this.eno = eno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	
	
}
