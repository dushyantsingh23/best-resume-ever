<template>
<div class="box" id="simple">
  <div class="header">
    <div class="row center">
      <span class="name">{{person.name.first}} {{person.name.middle}} {{person.name.last}}</span>
    </div>
    <div class="row center">
      <span class="title">{{person.title}}</span>
    </div>
    <div class="row center">
      <span class="contact">{{person.contact.email}} | {{person.contact.phone}}</span>
    </div>
    <div class="row center">
      <span class="about"> {{person.about}} </span>
    </div>
  </div>
  <div class="seperator"></div>
  <div class="body">
    <div class="left-col">
      <div class="education">
        <span class="heading">{{lang.education}}</span>
        <div class="education-block" v-for="education in person.education" :key="education.degree">
          <span class="degree row">{{education.degree}}</span>
          <span class="timeperiod row">{{education.timeperiod}}, {{education.score}}</span>
          <span class="degree-description row">{{education.description}}</span>
        </div>
      </div>
      <div class="skills">
        <span class="heading">{{lang.skills}}</span>
      </div>
      <div class="projects">
        <span class="heading">{{lang.projects}}</span>
      </div>
    </div>
    <div class="right-col">
      <div class="experience">
        <span class="heading">{{lang.experience}}</span>
        <div class="experience-block" v-for="experience in person.experience" :key="experience.company">
          <span class="company row"> {{experience.company}}, <span class="location">{{experience.location}}</span></span>
          <span class="timeperiod row">{{experience.position}} , {{experience.timeperiod}}</span>
          <span class="job-description row" v-for="description in experience.description" :key="description"> {{description}} </span>
        </div>
      </div>
      <div class="achievements">
        <span class="heading">{{lang.achievements}}</span>
        <i class="fa fa-envelope" aria-hidden="true"></i>
      </div>
      <div class="responsibility">
        <span class="heading">{{lang.responsibility}}</span>
      </div>
    </div>
  </div>
</div>
</template>

<script>
import Vue from 'vue';
import { getVueOptions } from './options';

let name = 'simple'; // TODO change name
export default Vue.component(name, getVueOptions(name));
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="less" scoped>

html * {
  font-family: 'Sans Serif'
}
.box {
  padding: 1em 0.5em;
}
.name {
  font-size: 50px;
  font-weight: lighter;
  text-transform: uppercase;
  font-family: 'Open Sans';
}
.row {
  display: block;
  padding: 0em 0.5em 0em 0.5em;
}
.center {
  text-align: center;
}
.title {
  font-size: 20px;
  text-transform: uppercase;
}
.contact {
  font-size: 17px;
  font-weight: 400;
  color: #575757
}
.about {
  font-size: 15px;
  line-height: 13px;
  display: inline-block;
  margin-top: 2px;
}
.seperator {
  background-color: #a30707;
  height: 1px;
  width: 100%;
  margin: 5px 0px 5px 0px;
}
.header {

}
.body{
  .left-col {
    width: 30%;
    display: block;
    padding: 0em 1em;
    float: left;
    height: 100%;
  }
  .right-col {
    width: 60%;
    display: block;
    padding: 0em 1em;
    float: right;
    height: 100%;
  }
}
.heading {
  font-size: 25px;
  text-transform: uppercase;
  font-family: 'Open Sans';
  font-weight: 400;
  color: #656565;
  border-bottom: 1px solid #656565;
  margin-bottom: 0.5em;
  display: inline-block;
}
.subheading {
  font-size: 20px;
  font-family: 'Open Sans';
  font-weight: 200;
  color: #414141;
  display: inline-block;
}
.timeperiod {
  font-size: 15px;
  font-style: italic;
  font-family: 'Roboto Light';
  font-weight: 200;
  color: #383838;
}
.education {
  .education-block {
    margin: 7px 0px;
    display: block;
    .degree {
      font-weight: 300;
      font-size: 20px;
    }
    .degree-description {
      font-weight: 200;
      font-size: 15px;
      font-family: 'Roboto Light';
      display: block;
      margin-left: 10px;
    }
  }
}
.experience {
  .experience-block {
    margin: 7px 0px;
    display: block;

    .company {
      text-transform: uppercase;
      font-weight: 400;
      font-size: 18px;
    }
    .job-title {
      font-weight: 300;
      font-size: 15px;
    }
    .job-description {
      font-weight: 200;
      font-size: 12px;
      display: block;
      margin-left: 10px;
      font-family: 'Roboto Light';
    }
    .location {
      text-transform: none;
      font-weight: 200;
      font-size: 15px;
    }
  }
}
</style>
