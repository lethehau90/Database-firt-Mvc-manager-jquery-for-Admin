using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Web_config_v1.Models.Entity;
using Web_config_v1.Models.Command;
using Web_config_v1.Models.Data;

namespace Web_config_v1.Models.Service
{
    public class CTdonhang_Service
    {
        private Web_config_v1Entities Connect_Enttity = new Web_config_v1Entities();

        public IList<CTdonhang_Model> GetAll()
        {
            IList<CTdonhang_Model> result = new List<CTdonhang_Model>();

            result = Connect_Enttity.CTdonhangs.Select(x => new CTdonhang_Model
            {
                IdCTHD = x.IdCTHD,
                IDhd = (int)(x.IDhd),
                IDsanpham = x.IDsanpham,
                Tensanpham = x.Tensanpham,
                Soluong = (int)(x.Soluong),
                Giaban = Convert.ToDouble(x.Giaban),
                Size = x.Size,
                Mausac = x.Mausac,
                Hinhanh = x.Hinhanh,
                danhmucsanpham = x.danhmucsanpham,
                chitietsanpham = x.chitietsanpham,
                Giamthem = Convert.ToDouble(x.Giamthem)


            }).ToList();

            return result;
        }

        public IList<CTdonhang_Model> GetId(CTdonhang_Model model)
        {
            IList<CTdonhang_Model> result = new List<CTdonhang_Model>();

            result = Connect_Enttity.CTdonhangs.Where(x => x.IdCTHD == model.IdCTHD).Select(x => new CTdonhang_Model
            {
                IdCTHD=x.IdCTHD,
                IDhd= (int)(x.IDhd),
                IDsanpham=x.IDsanpham,
                Tensanpham=x.Tensanpham,
                Soluong= (int)(x.Soluong),
                Giaban=Convert.ToDouble(x.Giaban),
                Size= x.Size,
                Mausac=x.Mausac,
                Hinhanh=x.Hinhanh,
                danhmucsanpham=x.danhmucsanpham,
                chitietsanpham=x.chitietsanpham,
                Giamthem=Convert.ToDouble(x.Giamthem)
            }).ToList();

            return result;
        }

        public IEnumerable<CTdonhang_Model> Read()
        {
            return GetAll();
        }
        public IEnumerable<CTdonhang_Model> ReadID(CTdonhang_Model model)
        {
            return GetId(model);
        }
        public void Deleteone(int Id)
        {

            var data = (from c in Connect_Enttity.CTdonhangs where c.IdCTHD == Id select c).FirstOrDefault();

            if (data != null)
            {
                Connect_Enttity.CTdonhangs.Remove(data);
                Connect_Enttity.SaveChanges();
                Dispose();
            }

        }

        public void DeleteAll(int[] Id)
        {
            if (Id != null)
            {
                foreach (var i in Id)
                {
                    var data = Connect_Enttity.CTdonhangs.FirstOrDefault(x => x.IdCTHD.Equals(i));
                    Connect_Enttity.CTdonhangs.Remove(data);
                    Connect_Enttity.SaveChanges();
                }
                Dispose();
            }

        }

        public void Create(CTdonhang_Model model)
        {
            var data = Connect_Enttity.CTdonhangs.FirstOrDefault(x => x.IdCTHD == model.IdCTHD);
            if (data == null)
            {
                var entity = new CTdonhang();
                entity.IDhd= (int)(model.IDhd);
                entity.IDsanpham=model.IDsanpham;
                entity.Tensanpham=model.Tensanpham;
                entity.Soluong= (int)(model.Soluong);
                entity.Giaban=Convert.ToDouble(model.Giaban);
                entity.Size= model.Size;
                entity.Mausac=model.Mausac;
                entity.Hinhanh=model.Hinhanh;
                entity.danhmucsanpham=model.danhmucsanpham;
                entity.chitietsanpham=model.chitietsanpham;
                entity.Giamthem = Convert.ToDouble(model.Giamthem);

                Connect_Enttity.CTdonhangs.Add(entity);
                Connect_Enttity.SaveChanges();
                Dispose();
            }
        }

        public void Update(CTdonhang_Model model)
        {
            var data = Connect_Enttity.CTdonhangs.FirstOrDefault(x => x.IdCTHD == model.IdCTHD);
            if (data != null)
            {
                data.IDhd = (int)(model.IDhd);
                data.IDsanpham = model.IDsanpham;
                data.Tensanpham = model.Tensanpham;
                data.Soluong = (int)(model.Soluong);
                data.Giaban = Convert.ToDouble(model.Giaban);
                data.Size = model.Size;
                data.Mausac = model.Mausac;
                data.Hinhanh = model.Hinhanh;
                data.danhmucsanpham = model.danhmucsanpham;
                data.chitietsanpham = model.chitietsanpham;
                data.Giamthem = Convert.ToDouble(model.Giamthem);

                Connect_Enttity.SaveChanges();
                Dispose();
            }
        }

        public void Dispose()
        {
            Connect_Enttity.Dispose();
        }
    }
}