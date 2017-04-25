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
    public class Mausac_Service
    {
        private Web_config_v1Entities Connect_Enttity = new Web_config_v1Entities();

        public IList<Mausac_Model> GetAll()
        {
            IList<Mausac_Model> result = new List<Mausac_Model>();

            result = Connect_Enttity.Mausacs.Select(x => new Mausac_Model
            {
                IDmau = x.IDmau,
                Tenmau = x.Tenmau,
                Hinhanh = x.Hinhanh,
                Lang = x.Lang,
                TenmauEn = x.TenmauEn,
                Active = (bool)x.Active,
                Ord= (int)x.Ord

            }).ToList();

            return result;
        }

        public IList<Mausac_Model> GetId(Mausac_Model model)
        {
            IList<Mausac_Model> result = new List<Mausac_Model>();

            result = Connect_Enttity.Mausacs.Where(x => x.IDmau == model.IDmau).Select(x => new Mausac_Model
            {
                IDmau = x.IDmau,
                Tenmau = x.Tenmau,
                Hinhanh = x.Hinhanh,
                Lang = x.Lang,
                TenmauEn = x.TenmauEn,
                Active = (bool)x.Active,
                Ord = (int)x.Ord
            }).ToList();

            return result;
        }

        public IEnumerable<Mausac_Model> Read()
        {
            return GetAll();
        }
        public IEnumerable<Mausac_Model> ReadID(Mausac_Model model)
        {
            return GetId(model);
        }
        public void Deleteone(int Id)
        {

            var data = (from c in Connect_Enttity.Mausacs where c.IDmau == Id select c).FirstOrDefault();

            if (data != null)
            {
                Connect_Enttity.Mausacs.Remove(data);
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
                    var data = Connect_Enttity.Mausacs.FirstOrDefault(x => x.IDmau.Equals(i));
                    Connect_Enttity.Mausacs.Remove(data);
                    Connect_Enttity.SaveChanges();
                }
                Dispose();
            }

        }

        public void Create(Mausac_Model model)
        {
            var data = Connect_Enttity.Mausacs.FirstOrDefault(x => x.IDmau == model.IDmau);
            if (data == null)
            {
                var entity = new Mausac();
                entity.Tenmau = model.Tenmau;
                entity.Hinhanh = model.Hinhanh;
                entity.Lang = model.Lang;
                entity.TenmauEn = model.TenmauEn;
                entity.Active = model.Active;
                entity.Ord = model.Ord;

                Connect_Enttity.Mausacs.Add(entity);
                Connect_Enttity.SaveChanges();
                Dispose();
            }
        }

        public void Update(Mausac_Model model)
        {
            var data = Connect_Enttity.Mausacs.FirstOrDefault(x => x.IDmau == model.IDmau);
            if (data != null)
            {
                data.Tenmau = model.Tenmau;
                data.Hinhanh = model.Hinhanh;
                data.Lang = model.Lang;
                data.TenmauEn = model.TenmauEn;
                data.Active = model.Active;
                data.Ord = model.Ord;

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