		  <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>          
          <!-- Modal-->
          <div id="levelModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" class="modal fade text-left">
            <div role="document" class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 id="exampleModalLabel" class="modal-title">Reset Activity Level</h4>
                  <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body">
                	<p id="message"></p>
                  <form>
                    <div class="form-group">
                      <label>Activity Level</label>
                      <select name="acty_level" id="acty_level" class="form-control mb-3">
                          <option value="">Select Level</option>
                          <c:forEach items="${levels}" var="level">
                         	<option value="${level}">Level ${level}</option>
                          </c:forEach>
                      </select>
                    </div>
                  </form>
                </div>
                <div class="modal-footer">
                  <button type="button" data-dismiss="modal" class="btn btn-secondary mr-auto">Close</button>
                  <button type="button" class="btn btn-primary" id="resetlevel">Reset</button>
                </div>
              </div>
            </div>
          </div>
