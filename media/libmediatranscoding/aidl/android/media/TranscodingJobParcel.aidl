/*
 * Copyright (C) 2019 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package android.media;

import android.media.TranscodingRequestParcel;
import android.media.TranscodingVideoTrackFormat;

/**
 * TranscodingJob is generated by the MediaTranscodingService upon receiving a TranscodingRequest.
 * It contains all the necessary configuration generated by the MediaTranscodingService for the
 * TranscodingRequest.
 *
 * {@hide}
 */
//TODO(hkuang): Implement the parcelable.
parcelable TranscodingJobParcel {
    /**
     * A unique positive Id generated by the MediaTranscodingService.
     */
    int jobId;

    /**
     * The request associated with the TranscodingJob.
     */
    TranscodingRequestParcel request;

    /**
     * Output video track's format. This will only be avaiable for video transcoding and it will
     * be avaiable when the job is finished.
     */
    @nullable TranscodingVideoTrackFormat videoTrackFormat;

    /**
    * Current number of jobs ahead of this job. The service schedules the job based on the priority
    * passed from the client. Client could specify whether to receive updates when the
    * awaitNumberOfJobs changes through setting requestProgressUpdate in the TranscodingRequest.
    */
    int awaitNumberOfJobs;
}
