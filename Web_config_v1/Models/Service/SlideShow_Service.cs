﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Web_config_v1.Models.Entity;
using Web_config_v1.Models.Command;
using Web_config_v1.Models.Data;

namespace Web_config_v1.Models.Service
{
    public class SlideShow_Service
    {
        private Web_config_v1Entities Connect_Enttity = new Web_config_v1Entities();

        public IList<SlideShow_Model> GetAll()
        {
            IList<SlideShow_Model> result = new List<SlideShow_Model>();

            result = Connect_Enttity.SlideShows.Select(x => new SlideShow_Model
            {
                Id = x.Id,
                Name = x.Name,
                Image = x.Image,
                Width = (int)(x.Width),
                Height = (int)(x.Height),
                Link = x.Link,
                Target = x.Target,
                Content = x.Content,
                Position = (short)(x.Position),
                Click = (int)(x.Click),
                Ord = (int)(x.Ord),
                Active = (bool)(x.Active),
                Lang = x.Lang,
                Detail = x.Detail,
                Title = x.Title,
                Description = x.Description,
                Keyword = x.Keyword,
                Image1 = x.Image1,
                Image2 = x.Image2,
                Image3 = x.Image3,
                Image4 = x.Image4,
                Image5 = x.Image5,
                Index = (int)(x.Index),
                Priority = (int)(x.Priority),
                Tag = x.Tag,
                NameEn = x.NameEn,
                ContentEn = x.ContentEn,
                DetailEn = x.DetailEn

            }).ToList();

            return result;
        }

        public IList<SlideShow_Model> GetId(SlideShow_Model model)
        {
            IList<SlideShow_Model> result = new List<SlideShow_Model>();

            result = Connect_Enttity.SlideShows.Where(x => x.Id == model.Id).Select(x => new SlideShow_Model
            {
                Id = x.Id,
                Name = x.Name,
                Image = x.Image,
                Width = (int)(x.Width),
                Height = (int)(x.Height),
                Link = x.Link,
                Target = x.Target,
                Content = x.Content,
                Position = (short)(x.Position),
                Click = (int)(x.Click),
                Ord = (int)(x.Ord),
                Active = (bool)(x.Active),
                Lang = x.Lang,
                Detail = x.Detail,
                Title = x.Title,
                Description = x.Description,
                Keyword = x.Keyword,
                Image1 = x.Image1,
                Image2 = x.Image2,
                Image3 = x.Image3,
                Image4 = x.Image4,
                Image5 = x.Image5,
                Index = (int)(x.Index),
                Priority = (int)(x.Priority),
                Tag = x.Tag,
                NameEn = x.NameEn,
                ContentEn = x.ContentEn,
                DetailEn = x.DetailEn

            }).ToList();

            return result;
        }

        public IEnumerable<SlideShow_Model> Read()
        {
            return GetAll();
        }
        public IEnumerable<SlideShow_Model> ReadID(SlideShow_Model model)
        {
            return GetId(model);
        }
        public void Deleteone(int Id)
        {

            var data = (from c in Connect_Enttity.SlideShows where c.Id == Id select c).FirstOrDefault();

            if (data != null)
            {
                Connect_Enttity.SlideShows.Remove(data);
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
                    var data = Connect_Enttity.SlideShows.FirstOrDefault(x => x.Id.Equals(i));
                    Connect_Enttity.SlideShows.Remove(data);
                    Connect_Enttity.SaveChanges();
                }
                Dispose();
            }

        }

        public void Create(SlideShow_Model model)
        {
            var data = Connect_Enttity.SlideShows.FirstOrDefault(x => x.Id == model.Id);
            if (data == null)
            {
                var entity = new SlideShow();

                entity.Name = model.Name;
                entity.Image = model.Image;
                entity.Width = (int)(model.Width);
                entity.Height = (int)(model.Height);
                entity.Link = model.Link;
                entity.Target = model.Target;
                entity.Content = model.Content;
                entity.Position = (short)(model.Position);
                entity.Click = (int)(model.Click);
                entity.Ord = (int)(model.Ord);
                entity.Active = (bool)(model.Active);
                entity.Lang = model.Lang;
                entity.Detail = model.Detail;
                entity.Title = model.Title;
                entity.Description = model.Description;
                entity.Keyword = model.Keyword;
                entity.Image1 = model.Image1;
                entity.Image2 = model.Image2;
                entity.Image3 = model.Image3;
                entity.Image4 = model.Image4;
                entity.Image5 = model.Image5;
                entity.Index = (int)(model.Index);
                entity.Priority = (int)(model.Priority);
                entity.Tag = model.Tag;
                entity.NameEn = model.NameEn;
                entity.ContentEn = model.ContentEn;
                entity.DetailEn = model.DetailEn;

                Connect_Enttity.SlideShows.Add(entity);
                Connect_Enttity.SaveChanges();
                Dispose();
            }
        }

        public void Update(SlideShow_Model model)
        {
            var data = Connect_Enttity.SlideShows.FirstOrDefault(x => x.Id == model.Id);
            if (data != null)
            {
                data.Name = model.Name;
                data.Image = model.Image;
                data.Width = (int)(model.Width);
                data.Height = (int)(model.Height);
                data.Link = model.Link;
                data.Target = model.Target;
                data.Content = model.Content;
                data.Position = (short)(model.Position);
                data.Click = (int)(model.Click);
                data.Ord = (int)(model.Ord);
                data.Active = (bool)(model.Active);
                data.Lang = model.Lang;
                data.Detail = model.Detail;
                data.Title = model.Title;
                data.Description = model.Description;
                data.Keyword = model.Keyword;
                data.Image1 = model.Image1;
                data.Image2 = model.Image2;
                data.Image3 = model.Image3;
                data.Image4 = model.Image4;
                data.Image5 = model.Image5;
                data.Index = (int)(model.Index);
                data.Priority = (int)(model.Priority);
                data.Tag = model.Tag;
                data.NameEn = model.NameEn;
                data.ContentEn = model.ContentEn;
                data.DetailEn = model.DetailEn;

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