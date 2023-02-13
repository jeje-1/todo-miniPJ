var xhr = new XMLHttpRequest();
var url = 'http://apis.data.go.kr/B490007/qualExamSchd/getQualExamSchdList'; /*URL*/
var queryParams = '?' + encodeURIComponent('serviceKey') + '='+'서비스키'; /*Service Key*/
queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); /**/
queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
queryParams += '&' + encodeURIComponent('dataFormat') + '=' + encodeURIComponent('xml'); /**/
queryParams += '&' + encodeURIComponent('implYy') + '=' + encodeURIComponent('2020'); /**/
queryParams += '&' + encodeURIComponent('qualgbCd') + '=' + encodeURIComponent('T'); /**/
queryParams += '&' + encodeURIComponent('jmCd') + '=' + encodeURIComponent('7910'); /**/
xhr.open('GET', url + queryParams);
xhr.onreadystatechange = function () {
    if (this.readyState == 4) {
        alert('Status: '+this.status+'nHeaders: '+JSON.stringify(this.getAllResponseHeaders())+'nBody: '+this.responseText);
    }
};

xhr.send('');