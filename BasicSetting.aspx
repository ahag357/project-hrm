<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BasicSetting.aspx.cs" Inherits="BasicSetting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- optional: page-specific styles/scripts -->
    <style>
        .logo-preview {
            border: 1px dashed #d9d9d9;
            border-radius: .5rem;
            min-height: 120px;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
            background: #fafafa;
        }

            .logo-preview img {
                max-width: 100%;
                max-height: 160px;
                object-fit: contain;
            }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-heading">
        <div class="page-title">
            <div class="row">
                <div class="col-12 col-md-6 order-md-1 order-last mb-3">
                    <h3>Basic Settings</h3>
                </div>
                <div class="col-12 col-md-6 order-md-2 order-first">
                    <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Dashboard.aspx">Setting</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Basic Setting</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>

        <section class="section">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">

                        <div class="card-body">
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link active" id="company-tab" data-bs-toggle="tab" href="#company-pane"
                                        role="tab" aria-controls="company" aria-selected="true">Company</a>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link" id="department-tab" data-bs-toggle="tab" href="#department-pane"
                                        role="tab" aria-controls="department" aria-selected="false">Department</a>
                                </li>
                            </ul>

                            <div class="tab-content" id="basicTabsContent">
                                <!-- COMPANY -->
                                <div class="tab-pane fade show active" id="company-pane" role="tabpanel"
                                    aria-labelledby="company-tab" tabindex="0">

                                    <div class="card mt-3">
                                        <div class="card-content">
                                            <div class="card-body">
                                                <div class="row g-3">
                                                    <div class="col-md-4">
                                                        <label for="CompanyName" class="form-label">Company Name</label>
                                                        <input type="text" id="CompanyName" name="CompanyName" class="form-control" placeholder="Acme Inc." />
                                                    </div>

                                                    <div class="col-md-4">
                                                        <label for="CompanyEmail" class="form-label">Company Email</label>
                                                        <input type="email" id="CompanyEmail" name="CompanyEmail" class="form-control" placeholder="info@acme.com" />
                                                    </div>

                                                    <div class="col-md-4">
                                                        <label for="CompanyPhone" class="form-label">Phone</label>
                                                        <input type="text" id="CompanyPhone" name="CompanyPhone" class="form-control" placeholder="+1 555 123 4567" />
                                                    </div>

                                                    <div class="col-md-4">
                                                        <label for="CompanyWebsite" class="form-label">Website</label>
                                                        <input type="url" id="CompanyWebsite" name="CompanyWebsite" class="form-control" placeholder="https://acme.com" />
                                                    </div>

                                                    <div class="col-md-4">
                                                        <label for="CompanyAddress" class="form-label">Address</label>
                                                        <input type="text" id="CompanyAddress" name="CompanyAddress" class="form-control" placeholder="Street, State, ZIP" />
                                                    </div>

                                                    <!-- A visible demo FilePond input -->
                                                    <div class="col-12 col-md-6">
                                                        <div class="card">
                                                            <div class="card-header">
                                                                <h5 class="card-title">Image Preview</h5>
                                                            </div>
                                                            <div class="card-content">
                                                                <div class="card-body">
                                                                    <p class="card-text">
                                                                        Upload here to preview images with
                      <code>.image-preview-filepond</code>.
                                                                    </p>
                                                                    <input type="file" class="image-preview-filepond" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- Hidden logo fields (keep hidden if you only want the one above visible) -->
                                                    <div class="col-md-6" style="display: none;">
                                                        <label class="form-label" for="CompanyLogo">Company Logo</label>
                                                        <div class="logo-preview mt-2">
                                                            <input id="CompanyLogo" type="file" class="image-preview-filepond" />
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6" style="display: none;">
                                                        <label class="form-label" for="CompanyReportLogo">Company Report Logo</label>
                                                        <div class="logo-preview mt-2">
                                                            <input id="CompanyReportLogo" type="file" class="image-preview-filepond" />
                                                        </div>
                                                    </div>

                                                    <div class="col-12 d-flex justify-content-end mt-2">
                                                        <button type="button" class="btn btn-primary me-2" onclick="companyOperation();">Save Company</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <!-- DEPARTMENT -->
                                <div class="tab-pane fade" id="department-pane" role="tabpanel"
                                    aria-labelledby="department-tab" tabindex="0">

                                    <div class="card mt-3">
                                        <div class="card-header">
                                            <h4 class="card-title">Department Details</h4>
                                        </div>
                                        <div class="card-content">
                                            <div class="card-body">
                                                <div class="row g-3">
                                                    <div class="col-md-6">
                                                        <label for="DeptName" class="form-label">Department Name</label>
                                                        <input type="text" id="DeptName" name="DeptName" class="form-control" placeholder="Human Resources" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="DeptCode" class="form-label">Code</label>
                                                        <input type="text" id="DeptCode" name="DeptCode" class="form-control" placeholder="HR01" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="DeptManager" class="form-label">Manager</label>
                                                        <input type="text" id="DeptManager" name="DeptManager" class="form-control" placeholder="Jane Doe" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="DeptEmail" class="form-label">Department Email</label>
                                                        <input type="email" id="DeptEmail" name="DeptEmail" class="form-control" placeholder="hr@acme.com" />
                                                    </div>
                                                    <div class="col-12">
                                                        <label for="DeptDescription" class="form-label">Description</label>
                                                        <textarea id="DeptDescription" name="DeptDescription" class="form-control" rows="3" placeholder="What this department handles..."></textarea>
                                                    </div>
                                                    <div class="col-12 d-flex justify-content-end mt-2">
                                                        <button type="submit" class="btn btn-primary me-2">Save Department</button>
                                                        <button type="reset" class="btn btn-light-secondary">Reset</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>


                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
            </div>
        </section>
    </div>

<!-- FilePond CSS (add in <head> ideally) -->
<link href="https://unpkg.com/filepond/dist/filepond.css" rel="stylesheet" />
<link href="https://unpkg.com/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.css" rel="stylesheet" />

<script>
    // Deep link: open the tab in the URL hash if present
    document.addEventListener('DOMContentLoaded', function () {
        const tabSelector = '#basicTabs [data-bs-toggle="tab"]';

        function activateHash() {
            const hash = window.location.hash;
            if (!hash) return;
            const trigger = document.querySelector(`#basicTabs a[href="${hash}"]`);
            if (trigger) new bootstrap.Tab(trigger).show();
        }
        activateHash();

        // Keep URL hash in sync when tabs change
        document.querySelectorAll(tabSelector).forEach(function (el) {
            el.addEventListener('shown.bs.tab', function (e) {
                const href = e.target.getAttribute('href');
                if (href && href.startsWith('#')) history.replaceState(null, '', href);
            });
        });
    });

    // FilePond setup for ALL .image-preview-filepond inputs
    document.addEventListener('DOMContentLoaded', function () {
        // Register the plugins you loaded via <script> tags
        if (window.FilePond) {
            FilePond.registerPlugin(
                FilePondPluginFileValidateType,
                FilePondPluginFileValidateSize,
                FilePondPluginImagePreview,
                FilePondPluginImageExifOrientation,
                FilePondPluginImageCrop,
                FilePondPluginImageFilter,
                FilePondPluginImageResize
            );

            // Create a pond for each matching input
            document.querySelectorAll('.image-preview-filepond').forEach(function (input) {
                FilePond.create(input, {
                    allowImagePreview: true,
                    allowImageFilter: false,
                    allowImageExifOrientation: true,
                    allowImageCrop: false,
                    allowImageResize: false,
                    allowMultiple: false,
                    maxFileSize: '2MB',
                    acceptedFileTypes: ['image/png', 'image/jpeg'],
                    labelIdle: 'Drag & Drop your logo or <span class="filepond--label-action">Browse</span>',
                    fileValidateTypeDetectType: (source, type) =>
                        new Promise((resolve) => resolve(type))
                });
            });
        }
    });
</script>

</asp:Content>
