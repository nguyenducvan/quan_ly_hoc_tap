///////////////////////////////////////////////////////////////////////////
// Description: Data Access class for the view 'V_GD_CHUNG_TU_ONLINE'
// Generated by LLBLGen v1.21.2003.712 Final on: Wednesday, May 13, 2015, 01:47:22
// Because the Base Class already implements IDispose, this class doesn't.
///////////////////////////////////////////////////////////////////////////
using System;
using System.Data;
using System.Data.SqlTypes;
using System.Data.SqlClient;

namespace TRMLLBL
{
	/// <summary>
	/// Purpose: Data Access class for the view 'V_GD_CHUNG_TU_ONLINE'.
	/// </summary>
	public class V_GD_CHUNG_TU_ONLINE : DBInteractionBase
	{
		#region Class Member Declarations
			private SqlDateTime		_dEADLINE_TT, _nGAY_CHUYEN_CT, _nGAY_KET_THUC, _nGAY_TAO_CT, _nGAY_KY, _nGAY_BAT_DAU, _nGAY_THANH_TOAN;
			private SqlDecimal		_iD_TRANG_THAI_CT, _mA_NHOM, _iD_TT_COURSE, _iD_NGUOI_LAP, _tONG_TIEN, _iD, _iD_GIANG_VIEN, _iD_DON_VI_QUAN_LY, _iD_HOP_DONG, _iD_MON_HOC, _sO_LUONG_SV;
			private SqlString		_nOI_DUNG_CHUNG_TU, _gHI_CHU, _cOURSE_NAME, _sO_HOP_DONG, _tRANG_THAI_HD, _hO_TEN_GIANG_VIEN, _tEN_MON, _dON_VI_THANH_TOAN;
		#endregion


		/// <summary>
		/// Purpose: Class constructor.
		/// </summary>
		public V_GD_CHUNG_TU_ONLINE()
		{
			// Nothing for now.
		}


		/// <summary>
		/// Purpose: Insert method. This method will insert one new row into the database.
		/// </summary>
		/// <returns>True if succeeded, otherwise an Exception is thrown. </returns>
		/// <remarks>
		/// Properties needed for this method: 
		/// <UL>
		///		 <LI>ID</LI>
		///		 <LI>ID_HOP_DONG</LI>
		///		 <LI>SO_HOP_DONG</LI>
		///		 <LI>ID_DON_VI_QUAN_LY</LI>
		///		 <LI>NGAY_KY</LI>
		///		 <LI>DON_VI_THANH_TOAN. May be SqlString.Null</LI>
		///		 <LI>ID_GIANG_VIEN</LI>
		///		 <LI>HO_TEN_GIANG_VIEN. May be SqlString.Null</LI>
		///		 <LI>COURSE_NAME</LI>
		///		 <LI>ID_MON_HOC</LI>
		///		 <LI>TEN_MON. May be SqlString.Null</LI>
		///		 <LI>SO_LUONG_SV</LI>
		///		 <LI>NGAY_BAT_DAU</LI>
		///		 <LI>NGAY_KET_THUC</LI>
		///		 <LI>ID_TRANG_THAI_CT</LI>
		///		 <LI>TRANG_THAI_HD. May be SqlString.Null</LI>
		///		 <LI>ID_TT_COURSE</LI>
		///		 <LI>NGAY_TAO_CT</LI>
		///		 <LI>ID_NGUOI_LAP</LI>
		///		 <LI>DEADLINE_TT. May be SqlDateTime.Null</LI>
		///		 <LI>NGAY_CHUYEN_CT. May be SqlDateTime.Null</LI>
		///		 <LI>NGAY_THANH_TOAN. May be SqlDateTime.Null</LI>
		///		 <LI>GHI_CHU. May be SqlString.Null</LI>
		///		 <LI>NOI_DUNG_CHUNG_TU. May be SqlString.Null</LI>
		///		 <LI>TONG_TIEN. May be SqlDecimal.Null</LI>
		///		 <LI>MA_NHOM. May be SqlDecimal.Null</LI>
		/// </UL>
		/// </remarks>
		public override bool Insert()
		{
			SqlCommand	cmdToExecute = new SqlCommand();
			cmdToExecute.CommandText = "dbo.[pr_V_GD_CHUNG_TU_ONLINE_Insert]";
			cmdToExecute.CommandType = CommandType.StoredProcedure;

			// Use base class' connection object
			cmdToExecute.Connection = _mainConnection;

			try
			{
				cmdToExecute.Parameters.Add(new SqlParameter("@ID", SqlDbType.Decimal, 9, ParameterDirection.Input, false, 18, 1, "", DataRowVersion.Proposed, _iD));
				cmdToExecute.Parameters.Add(new SqlParameter("@ID_HOP_DONG", SqlDbType.Decimal, 9, ParameterDirection.Input, false, 18, 1, "", DataRowVersion.Proposed, _iD_HOP_DONG));
				cmdToExecute.Parameters.Add(new SqlParameter("@SO_HOP_DONG", SqlDbType.NVarChar, 35, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _sO_HOP_DONG));
				cmdToExecute.Parameters.Add(new SqlParameter("@ID_DON_VI_QUAN_LY", SqlDbType.Decimal, 9, ParameterDirection.Input, false, 18, 1, "", DataRowVersion.Proposed, _iD_DON_VI_QUAN_LY));
				cmdToExecute.Parameters.Add(new SqlParameter("@NGAY_KY", SqlDbType.DateTime, 8, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _nGAY_KY));
				cmdToExecute.Parameters.Add(new SqlParameter("@DON_VI_THANH_TOAN", SqlDbType.NVarChar, 250, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _dON_VI_THANH_TOAN));
				cmdToExecute.Parameters.Add(new SqlParameter("@ID_GIANG_VIEN", SqlDbType.Decimal, 9, ParameterDirection.Input, false, 18, 1, "", DataRowVersion.Proposed, _iD_GIANG_VIEN));
				cmdToExecute.Parameters.Add(new SqlParameter("@HO_TEN_GIANG_VIEN", SqlDbType.NVarChar, 101, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _hO_TEN_GIANG_VIEN));
				cmdToExecute.Parameters.Add(new SqlParameter("@COURSE_NAME", SqlDbType.NVarChar, 250, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _cOURSE_NAME));
				cmdToExecute.Parameters.Add(new SqlParameter("@ID_MON_HOC", SqlDbType.Decimal, 9, ParameterDirection.Input, false, 18, 1, "", DataRowVersion.Proposed, _iD_MON_HOC));
				cmdToExecute.Parameters.Add(new SqlParameter("@TEN_MON", SqlDbType.NVarChar, 250, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _tEN_MON));
				cmdToExecute.Parameters.Add(new SqlParameter("@SO_LUONG_SV", SqlDbType.Decimal, 5, ParameterDirection.Input, false, 4, 1, "", DataRowVersion.Proposed, _sO_LUONG_SV));
				cmdToExecute.Parameters.Add(new SqlParameter("@NGAY_BAT_DAU", SqlDbType.DateTime, 8, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _nGAY_BAT_DAU));
				cmdToExecute.Parameters.Add(new SqlParameter("@NGAY_KET_THUC", SqlDbType.DateTime, 8, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _nGAY_KET_THUC));
				cmdToExecute.Parameters.Add(new SqlParameter("@ID_TRANG_THAI_CT", SqlDbType.Decimal, 9, ParameterDirection.Input, false, 18, 1, "", DataRowVersion.Proposed, _iD_TRANG_THAI_CT));
				cmdToExecute.Parameters.Add(new SqlParameter("@TRANG_THAI_HD", SqlDbType.NVarChar, 250, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _tRANG_THAI_HD));
				cmdToExecute.Parameters.Add(new SqlParameter("@ID_TT_COURSE", SqlDbType.Decimal, 9, ParameterDirection.Input, false, 18, 1, "", DataRowVersion.Proposed, _iD_TT_COURSE));
				cmdToExecute.Parameters.Add(new SqlParameter("@NGAY_TAO_CT", SqlDbType.DateTime, 8, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _nGAY_TAO_CT));
				cmdToExecute.Parameters.Add(new SqlParameter("@ID_NGUOI_LAP", SqlDbType.Decimal, 9, ParameterDirection.Input, false, 18, 1, "", DataRowVersion.Proposed, _iD_NGUOI_LAP));
				cmdToExecute.Parameters.Add(new SqlParameter("@DEADLINE_TT", SqlDbType.DateTime, 8, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _dEADLINE_TT));
				cmdToExecute.Parameters.Add(new SqlParameter("@NGAY_CHUYEN_CT", SqlDbType.DateTime, 8, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _nGAY_CHUYEN_CT));
				cmdToExecute.Parameters.Add(new SqlParameter("@NGAY_THANH_TOAN", SqlDbType.DateTime, 8, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _nGAY_THANH_TOAN));
				cmdToExecute.Parameters.Add(new SqlParameter("@GHI_CHU", SqlDbType.NVarChar, 250, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _gHI_CHU));
				cmdToExecute.Parameters.Add(new SqlParameter("@NOI_DUNG_CHUNG_TU", SqlDbType.NVarChar, 500, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Proposed, _nOI_DUNG_CHUNG_TU));
				cmdToExecute.Parameters.Add(new SqlParameter("@TONG_TIEN", SqlDbType.Decimal, 9, ParameterDirection.Input, false, 18, 3, "", DataRowVersion.Proposed, _tONG_TIEN));
				cmdToExecute.Parameters.Add(new SqlParameter("@MA_NHOM", SqlDbType.Decimal, 5, ParameterDirection.Input, false, 4, 1, "", DataRowVersion.Proposed, _mA_NHOM));

				// Open connection.
				_mainConnection.Open();

				// Execute query.
				_rowsAffected = cmdToExecute.ExecuteNonQuery();
				return true;
			}
			catch(Exception ex)
			{
				// some error occured. Bubble it to caller and encapsulate Exception object
				throw new Exception("V_GD_CHUNG_TU_ONLINE::Insert::Error occured.", ex);
			}
			finally
			{
				// Close connection.
				_mainConnection.Close();
				cmdToExecute.Dispose();
			}
		}


		#region Class Property Declarations
		public SqlDecimal ID
		{
			get
			{
				return _iD;
			}
			set
			{
				SqlDecimal iDTmp = (SqlDecimal)value;
				if(iDTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("ID", "ID can't be NULL");
				}
				_iD = value;
			}
		}


		public SqlDecimal ID_HOP_DONG
		{
			get
			{
				return _iD_HOP_DONG;
			}
			set
			{
				SqlDecimal iD_HOP_DONGTmp = (SqlDecimal)value;
				if(iD_HOP_DONGTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("ID_HOP_DONG", "ID_HOP_DONG can't be NULL");
				}
				_iD_HOP_DONG = value;
			}
		}


		public SqlString SO_HOP_DONG
		{
			get
			{
				return _sO_HOP_DONG;
			}
			set
			{
				SqlString sO_HOP_DONGTmp = (SqlString)value;
				if(sO_HOP_DONGTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("SO_HOP_DONG", "SO_HOP_DONG can't be NULL");
				}
				_sO_HOP_DONG = value;
			}
		}


		public SqlDecimal ID_DON_VI_QUAN_LY
		{
			get
			{
				return _iD_DON_VI_QUAN_LY;
			}
			set
			{
				SqlDecimal iD_DON_VI_QUAN_LYTmp = (SqlDecimal)value;
				if(iD_DON_VI_QUAN_LYTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("ID_DON_VI_QUAN_LY", "ID_DON_VI_QUAN_LY can't be NULL");
				}
				_iD_DON_VI_QUAN_LY = value;
			}
		}


		public SqlDateTime NGAY_KY
		{
			get
			{
				return _nGAY_KY;
			}
			set
			{
				SqlDateTime nGAY_KYTmp = (SqlDateTime)value;
				if(nGAY_KYTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("NGAY_KY", "NGAY_KY can't be NULL");
				}
				_nGAY_KY = value;
			}
		}


		public SqlString DON_VI_THANH_TOAN
		{
			get
			{
				return _dON_VI_THANH_TOAN;
			}
			set
			{
				SqlString dON_VI_THANH_TOANTmp = (SqlString)value;
				if(dON_VI_THANH_TOANTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("DON_VI_THANH_TOAN", "DON_VI_THANH_TOAN can't be NULL");
				}
				_dON_VI_THANH_TOAN = value;
			}
		}


		public SqlDecimal ID_GIANG_VIEN
		{
			get
			{
				return _iD_GIANG_VIEN;
			}
			set
			{
				SqlDecimal iD_GIANG_VIENTmp = (SqlDecimal)value;
				if(iD_GIANG_VIENTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("ID_GIANG_VIEN", "ID_GIANG_VIEN can't be NULL");
				}
				_iD_GIANG_VIEN = value;
			}
		}


		public SqlString HO_TEN_GIANG_VIEN
		{
			get
			{
				return _hO_TEN_GIANG_VIEN;
			}
			set
			{
				SqlString hO_TEN_GIANG_VIENTmp = (SqlString)value;
				if(hO_TEN_GIANG_VIENTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("HO_TEN_GIANG_VIEN", "HO_TEN_GIANG_VIEN can't be NULL");
				}
				_hO_TEN_GIANG_VIEN = value;
			}
		}


		public SqlString COURSE_NAME
		{
			get
			{
				return _cOURSE_NAME;
			}
			set
			{
				SqlString cOURSE_NAMETmp = (SqlString)value;
				if(cOURSE_NAMETmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("COURSE_NAME", "COURSE_NAME can't be NULL");
				}
				_cOURSE_NAME = value;
			}
		}


		public SqlDecimal ID_MON_HOC
		{
			get
			{
				return _iD_MON_HOC;
			}
			set
			{
				SqlDecimal iD_MON_HOCTmp = (SqlDecimal)value;
				if(iD_MON_HOCTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("ID_MON_HOC", "ID_MON_HOC can't be NULL");
				}
				_iD_MON_HOC = value;
			}
		}


		public SqlString TEN_MON
		{
			get
			{
				return _tEN_MON;
			}
			set
			{
				SqlString tEN_MONTmp = (SqlString)value;
				if(tEN_MONTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("TEN_MON", "TEN_MON can't be NULL");
				}
				_tEN_MON = value;
			}
		}


		public SqlDecimal SO_LUONG_SV
		{
			get
			{
				return _sO_LUONG_SV;
			}
			set
			{
				SqlDecimal sO_LUONG_SVTmp = (SqlDecimal)value;
				if(sO_LUONG_SVTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("SO_LUONG_SV", "SO_LUONG_SV can't be NULL");
				}
				_sO_LUONG_SV = value;
			}
		}


		public SqlDateTime NGAY_BAT_DAU
		{
			get
			{
				return _nGAY_BAT_DAU;
			}
			set
			{
				SqlDateTime nGAY_BAT_DAUTmp = (SqlDateTime)value;
				if(nGAY_BAT_DAUTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("NGAY_BAT_DAU", "NGAY_BAT_DAU can't be NULL");
				}
				_nGAY_BAT_DAU = value;
			}
		}


		public SqlDateTime NGAY_KET_THUC
		{
			get
			{
				return _nGAY_KET_THUC;
			}
			set
			{
				SqlDateTime nGAY_KET_THUCTmp = (SqlDateTime)value;
				if(nGAY_KET_THUCTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("NGAY_KET_THUC", "NGAY_KET_THUC can't be NULL");
				}
				_nGAY_KET_THUC = value;
			}
		}


		public SqlDecimal ID_TRANG_THAI_CT
		{
			get
			{
				return _iD_TRANG_THAI_CT;
			}
			set
			{
				SqlDecimal iD_TRANG_THAI_CTTmp = (SqlDecimal)value;
				if(iD_TRANG_THAI_CTTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("ID_TRANG_THAI_CT", "ID_TRANG_THAI_CT can't be NULL");
				}
				_iD_TRANG_THAI_CT = value;
			}
		}


		public SqlString TRANG_THAI_HD
		{
			get
			{
				return _tRANG_THAI_HD;
			}
			set
			{
				SqlString tRANG_THAI_HDTmp = (SqlString)value;
				if(tRANG_THAI_HDTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("TRANG_THAI_HD", "TRANG_THAI_HD can't be NULL");
				}
				_tRANG_THAI_HD = value;
			}
		}


		public SqlDecimal ID_TT_COURSE
		{
			get
			{
				return _iD_TT_COURSE;
			}
			set
			{
				SqlDecimal iD_TT_COURSETmp = (SqlDecimal)value;
				if(iD_TT_COURSETmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("ID_TT_COURSE", "ID_TT_COURSE can't be NULL");
				}
				_iD_TT_COURSE = value;
			}
		}


		public SqlDateTime NGAY_TAO_CT
		{
			get
			{
				return _nGAY_TAO_CT;
			}
			set
			{
				SqlDateTime nGAY_TAO_CTTmp = (SqlDateTime)value;
				if(nGAY_TAO_CTTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("NGAY_TAO_CT", "NGAY_TAO_CT can't be NULL");
				}
				_nGAY_TAO_CT = value;
			}
		}


		public SqlDecimal ID_NGUOI_LAP
		{
			get
			{
				return _iD_NGUOI_LAP;
			}
			set
			{
				SqlDecimal iD_NGUOI_LAPTmp = (SqlDecimal)value;
				if(iD_NGUOI_LAPTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("ID_NGUOI_LAP", "ID_NGUOI_LAP can't be NULL");
				}
				_iD_NGUOI_LAP = value;
			}
		}


		public SqlDateTime DEADLINE_TT
		{
			get
			{
				return _dEADLINE_TT;
			}
			set
			{
				SqlDateTime dEADLINE_TTTmp = (SqlDateTime)value;
				if(dEADLINE_TTTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("DEADLINE_TT", "DEADLINE_TT can't be NULL");
				}
				_dEADLINE_TT = value;
			}
		}


		public SqlDateTime NGAY_CHUYEN_CT
		{
			get
			{
				return _nGAY_CHUYEN_CT;
			}
			set
			{
				SqlDateTime nGAY_CHUYEN_CTTmp = (SqlDateTime)value;
				if(nGAY_CHUYEN_CTTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("NGAY_CHUYEN_CT", "NGAY_CHUYEN_CT can't be NULL");
				}
				_nGAY_CHUYEN_CT = value;
			}
		}


		public SqlDateTime NGAY_THANH_TOAN
		{
			get
			{
				return _nGAY_THANH_TOAN;
			}
			set
			{
				SqlDateTime nGAY_THANH_TOANTmp = (SqlDateTime)value;
				if(nGAY_THANH_TOANTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("NGAY_THANH_TOAN", "NGAY_THANH_TOAN can't be NULL");
				}
				_nGAY_THANH_TOAN = value;
			}
		}


		public SqlString GHI_CHU
		{
			get
			{
				return _gHI_CHU;
			}
			set
			{
				SqlString gHI_CHUTmp = (SqlString)value;
				if(gHI_CHUTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("GHI_CHU", "GHI_CHU can't be NULL");
				}
				_gHI_CHU = value;
			}
		}


		public SqlString NOI_DUNG_CHUNG_TU
		{
			get
			{
				return _nOI_DUNG_CHUNG_TU;
			}
			set
			{
				SqlString nOI_DUNG_CHUNG_TUTmp = (SqlString)value;
				if(nOI_DUNG_CHUNG_TUTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("NOI_DUNG_CHUNG_TU", "NOI_DUNG_CHUNG_TU can't be NULL");
				}
				_nOI_DUNG_CHUNG_TU = value;
			}
		}


		public SqlDecimal TONG_TIEN
		{
			get
			{
				return _tONG_TIEN;
			}
			set
			{
				SqlDecimal tONG_TIENTmp = (SqlDecimal)value;
				if(tONG_TIENTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("TONG_TIEN", "TONG_TIEN can't be NULL");
				}
				_tONG_TIEN = value;
			}
		}


		public SqlDecimal MA_NHOM
		{
			get
			{
				return _mA_NHOM;
			}
			set
			{
				SqlDecimal mA_NHOMTmp = (SqlDecimal)value;
				if(mA_NHOMTmp.IsNull)
				{
					throw new ArgumentOutOfRangeException("MA_NHOM", "MA_NHOM can't be NULL");
				}
				_mA_NHOM = value;
			}
		}
		#endregion
	}
}