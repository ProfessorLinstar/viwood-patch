.class public Lcom/android/server/location/gnss/hal/GnssNative;
.super Ljava/lang/Object;
.source "GnssNative.java"


# static fields
.field public static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field public static final AGPS_REF_LOCATION_TYPE_LTE_CELLID:I = 0x4

.field public static final AGPS_REF_LOCATION_TYPE_NR_CELLID:I = 0x8

.field public static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field public static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field public static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field public static final AGPS_SETID_TYPE_NONE:I = 0x0

.field public static final GNSS_AIDING_TYPE_ALL:I = 0xffff

.field public static final GNSS_AIDING_TYPE_ALMANAC:I = 0x2

.field public static final GNSS_AIDING_TYPE_CELLDB_INFO:I = 0x8000

.field public static final GNSS_AIDING_TYPE_EPHEMERIS:I = 0x1

.field public static final GNSS_AIDING_TYPE_HEALTH:I = 0x40

.field public static final GNSS_AIDING_TYPE_IONO:I = 0x10

.field public static final GNSS_AIDING_TYPE_POSITION:I = 0x4

.field public static final GNSS_AIDING_TYPE_RTI:I = 0x400

.field public static final GNSS_AIDING_TYPE_SADATA:I = 0x200

.field public static final GNSS_AIDING_TYPE_SVDIR:I = 0x80

.field public static final GNSS_AIDING_TYPE_SVSTEER:I = 0x100

.field public static final GNSS_AIDING_TYPE_TIME:I = 0x8

.field public static final GNSS_AIDING_TYPE_UTC:I = 0x20

.field public static final GNSS_LOCATION_HAS_ALTITUDE:I = 0x2

.field public static final GNSS_LOCATION_HAS_BEARING:I = 0x8

.field public static final GNSS_LOCATION_HAS_BEARING_ACCURACY:I = 0x80

.field public static final GNSS_LOCATION_HAS_HORIZONTAL_ACCURACY:I = 0x10

.field public static final GNSS_LOCATION_HAS_LAT_LONG:I = 0x1

.field public static final GNSS_LOCATION_HAS_SPEED:I = 0x4

.field public static final GNSS_LOCATION_HAS_SPEED_ACCURACY:I = 0x40

.field public static final GNSS_LOCATION_HAS_VERTICAL_ACCURACY:I = 0x20

.field public static final GNSS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field public static final GNSS_POSITION_MODE_MS_BASED:I = 0x1

.field public static final GNSS_POSITION_MODE_STANDALONE:I = 0x0

.field public static final GNSS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field public static final GNSS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field public static final GNSS_REALTIME_HAS_TIMESTAMP_NS:I = 0x1

.field public static final GNSS_REALTIME_HAS_TIME_UNCERTAINTY_NS:I = 0x2

.field public static final ITAR_SPEED_LIMIT_METERS_PER_SECOND:F = 400.0f

.field public static final POWER_STATS_REQUEST_TIMEOUT_MILLIS:I = 0x64

.field public static sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

.field public static sGnssHalInitialized:Z

.field public static sInstance:Lcom/android/server/location/gnss/hal/GnssNative;


# instance fields
.field public mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

.field public mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

.field public mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

.field public mCapabilities:Landroid/location/GnssCapabilities;

.field public final mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

.field public final mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

.field public mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

.field public mGnssAssistanceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GnssAssistanceCallbacks;

.field public final mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

.field public final mHandler:Landroid/os/Handler;

.field public mHardwareModelName:Ljava/lang/String;

.field public mHardwareYear:I

.field public mHasFirstFix:Z

.field public volatile mItarSpeedLimitExceeded:Z

.field public mLastKnownPowerStats:Lcom/android/server/location/gnss/GnssPowerStats;

.field public mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

.field public mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

.field public mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

.field public mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

.field public mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

.field public mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

.field public final mPendingPowerStatsCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mPowerStatsLock:Ljava/lang/Object;

.field public final mPowerStatsTimeoutCallback:Ljava/lang/Runnable;

.field public mPsdsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

.field public mRegistered:Z

.field public mStartRealtimeMs:J

.field public mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

.field public mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

.field public mTimeCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

.field public mTopFlags:I


# direct methods
.method public static synthetic $r8$lambda$1UCtst-V0Z5j1l14d41SBi1vhdI(Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$6-OuCx2sVq6REAuJkN9ZcRR0v5k(Lcom/android/server/location/gnss/hal/GnssNative;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofenceAddStatus$20(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$6CZ016EvoppR0myHpgVyzp5Bsvk(Lcom/android/server/location/gnss/hal/GnssNative;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofenceResumeStatus$23(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$7HeWH-P4JlZDYxBciNzC26zFDP0(Lcom/android/server/location/gnss/hal/GnssNative;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$isInEmergencySession$29()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9OfI9WbjdopdTa7XLo7_FG8eCNY(Lcom/android/server/location/gnss/hal/GnssNative;ILandroid/location/Location;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofenceStatus$19(ILandroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bj5rZqoZJ-b2AHkQN3u3bTtbp4o(Lcom/android/server/location/gnss/hal/GnssNative;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportNmea$9(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$DrQ6pDwpbck6J5QJ68XkwthFg1g(Lcom/android/server/location/gnss/hal/GnssNative;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofenceRemoveStatus$21(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$DyM9fI_oCQU6wPWWEGEUi43bjls(Lcom/android/server/location/gnss/hal/GnssNative;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$psdsDownloadRequest$16(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JLHPCBJ657AEK2uIgGkOIn886eQ(Ljava/util/concurrent/Executor;Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;Lcom/android/server/location/gnss/GnssPowerStats;)V
    .locals 1

    .line 992
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;Lcom/android/server/location/gnss/GnssPowerStats;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RCS1nU7T_6i40cmDg6b4SolqAcA(Ljava/util/concurrent/Executor;Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;Lcom/android/server/location/gnss/GnssPowerStats;)V
    .locals 1

    .line 991
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda18;-><init>(Ljava/util/concurrent/Executor;Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;Lcom/android/server/location/gnss/GnssPowerStats;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sw7Ri0p-_Ksc23yUe7Bud4ittcA(Lcom/android/server/location/gnss/hal/GnssNative;II[B)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportAGpsStatus$8(II[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$_9Q4LDyf_3PP5whAQG-pkgMJWrw(Lcom/android/server/location/gnss/hal/GnssNative;[Landroid/location/Location;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportLocationBatch$15([Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eY6TLcwUjMTxvveFp0jW4KLTsmw(Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestUtcTime$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$fIb-1WuODbhlBvX2C584sEvC70o(Lcom/android/server/location/gnss/hal/GnssNative;Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$onCapabilitiesChanged$13(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gHBeqniyt2U7tBjl0ACl9Mmg474(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Lcom/android/server/location/gnss/GnssPowerStats;)V
    .locals 0

    .line 1011
    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1012
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static synthetic $r8$lambda$jSpEVClYoI4IbiquX7GCvLW6zZQ(Lcom/android/server/location/gnss/hal/GnssNative;Landroid/location/GnssNavigationMessage;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportNavigationMessage$12(Landroid/location/GnssNavigationMessage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mVjNxj_SOcFlMPo68wEMjFV4iL8(Lcom/android/server/location/gnss/GnssPowerStats;Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;)V
    .locals 0

    .line 1271
    invoke-interface {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;->onReportPowerStats(Lcom/android/server/location/gnss/GnssPowerStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mpe4YBqchYJ0WEhC4ss_4iAeFB4(Lcom/android/server/location/gnss/hal/GnssNative;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofencePauseStatus$22(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ozzt7BubswLXd6Vldp5P-euPx3I(Lcom/android/server/location/gnss/hal/GnssNative;ZZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestLocation$25(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$qNLm-8ijwEsUIu6uCf-cSxNrbGI(Lcom/android/server/location/gnss/hal/GnssNative;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportStatus$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$r4-XSEx0WbVLLqGtTPGCk9LXOno(Lcom/android/server/location/gnss/hal/GnssNative;Landroid/location/GnssMeasurementsEvent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportMeasurementData$10(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tDZXrITcedfj_bhm6YmEyZ_jK6I(Lcom/android/server/location/gnss/hal/GnssNative;I[I[F[F[F[F[F)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportSvStatus$7(I[I[F[F[F[F[F)V

    return-void
.end method

.method public static synthetic $r8$lambda$tJ_GNrJuUnQy_S5kfl_kirie9DM(Lcom/android/server/location/gnss/hal/GnssNative;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportAntennaInfo$11(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tVlMxWi8u2f7oDcbmcMSj96pEsA(Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;Lcom/android/server/location/gnss/GnssPowerStats;)V
    .locals 0

    .line 992
    invoke-interface {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;->onReportPowerStats(Lcom/android/server/location/gnss/GnssPowerStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tXa8kmPlaUMkYPMO5j8S-Hj2gsQ(Lcom/android/server/location/gnss/hal/GnssNative;ILandroid/location/Location;IJ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofenceTransition$18(ILandroid/location/Location;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$v3fQArzMmn_IpaYlKQ7-WjyPTiw(Lcom/android/server/location/gnss/hal/GnssNative;ZLandroid/location/Location;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportLocation$5(ZLandroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w0KmejZMwiz1ai85dOAflx-dr9g(Lcom/android/server/location/gnss/hal/GnssNative;Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportNfwNotification$28(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$wY7FF3NroSSja7MlmP8cicBu1mc(Lcom/android/server/location/gnss/hal/GnssNative;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestSetID$24(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wZsOr05Gd8h3adeq3xPd8n-vSMs(Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestRefLocation$27()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnative_init_once(Lcom/android/server/location/gnss/hal/GnssNative;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_init_once(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_add_geofence(IDDDIIII)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p10}, Lcom/android/server/location/gnss/hal/GnssNative;->native_add_geofence(IDDDIIII)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_agps_set_id(ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_agps_set_id(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_agps_set_ref_location_cellid(IIIIJIII)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p8}, Lcom/android/server/location/gnss/hal/GnssNative;->native_agps_set_ref_location_cellid(IIIIJIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_class_init_once()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_class_init_once()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_cleanup()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_cleanup()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_cleanup_batching()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_cleanup_batching()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_delete_aiding_data(I)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->native_delete_aiding_data(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_flush_batch()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_flush_batch()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_get_batch_size()I
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_get_batch_size()I

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_get_internal_state()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_get_internal_state()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smnative_init()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_init()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_init_batching()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_init_batching()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_best_location(IDDDFFFFFFJIJD)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p19}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_best_location(IDDDFFFFFFJIJD)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_location(IDDDFFFFFFJIJD)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p19}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_location(IDDDFFFFFFJIJD)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_ni_supl_message_data([BII)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_ni_supl_message_data([BII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_psds_data([BII)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_psds_data([BII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_inject_time(JJI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative;->native_inject_time(JJI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_is_antenna_info_supported()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_antenna_info_supported()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_is_geofence_supported()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_is_gnss_visibility_control_supported()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_gnss_visibility_control_supported()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_is_measurement_corrections_supported()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_measurement_corrections_supported()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_is_measurement_supported()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_measurement_supported()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_is_navigation_message_supported()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_navigation_message_supported()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_is_supported()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_pause_geofence(I)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->native_pause_geofence(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_read_nmea([BI)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_read_nmea([BI)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_remove_geofence(I)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->native_remove_geofence(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_request_power_stats()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_request_power_stats()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_resume_geofence(II)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->native_resume_geofence(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_set_agps_server(ILjava/lang/String;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->native_set_agps_server(ILjava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnative_set_position_mode(IIIIIZ)Z
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/location/gnss/hal/GnssNative;->native_set_position_mode(IIIIIZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_start()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_start_antenna_info_listening()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_antenna_info_listening()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_start_batch(JFZ)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_batch(JFZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_start_measurement_collection(ZZI)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_measurement_collection(ZZI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_start_navigation_message_collection()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_start_nmea_message_collection()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_nmea_message_collection()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_start_sv_status_collection()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_start_sv_status_collection()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_stop()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_stop_antenna_info_listening()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_antenna_info_listening()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_stop_batch()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_batch()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_stop_measurement_collection()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_measurement_collection()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_stop_navigation_message_collection()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_stop_nmea_message_collection()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_nmea_message_collection()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_stop_sv_status_collection()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_stop_sv_status_collection()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnative_supports_psds()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->native_supports_psds()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/GnssConfiguration;)V
    .locals 3

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 388
    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    .line 389
    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    .line 390
    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    .line 391
    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    .line 392
    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    .line 393
    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    .line 394
    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    .line 395
    new-array v1, v0, [Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    const/4 v1, 0x0

    .line 398
    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLastKnownPowerStats:Lcom/android/server/location/gnss/GnssPowerStats;

    .line 399
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPowerStatsLock:Ljava/lang/Object;

    .line 400
    new-instance v2, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    iput-object v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPowerStatsTimeoutCallback:Ljava/lang/Runnable;

    .line 404
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPendingPowerStatsCallbacks:Ljava/util/List;

    .line 419
    new-instance v2, Landroid/location/GnssCapabilities$Builder;

    invoke-direct {v2}, Landroid/location/GnssCapabilities$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/location/GnssCapabilities$Builder;->build()Landroid/location/GnssCapabilities;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 421
    iput v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareYear:I

    .line 422
    iput-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareModelName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 423
    iput-wide v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStartRealtimeMs:J

    .line 424
    iput-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHasFirstFix:Z

    .line 427
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    .line 428
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getEmergencyHelper()Lcom/android/server/location/injector/EmergencyHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

    .line 429
    iput-object p3, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 430
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized create(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/GnssConfiguration;)Lcom/android/server/location/gnss/hal/GnssNative;
    .locals 3

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative;

    monitor-enter v0

    .line 378
    :try_start_0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->isSupported()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 379
    sget-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sInstance:Lcom/android/server/location/gnss/hal/GnssNative;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 380
    new-instance v1, Lcom/android/server/location/gnss/hal/GnssNative;

    sget-object v2, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;-><init>(Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/GnssConfiguration;)V

    sput-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sInstance:Lcom/android/server/location/gnss/hal/GnssNative;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized initializeHal()V
    .locals 2

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative;

    monitor-enter v0

    .line 353
    :try_start_0
    sget-boolean v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHalInitialized:Z

    if-nez v1, :cond_1

    .line 354
    sget-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    if-nez v1, :cond_0

    .line 355
    new-instance v1, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-direct {v1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;-><init>()V

    sput-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 357
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->classInitOnce()V

    const/4 v1, 0x1

    .line 358
    sput-boolean v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHalInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized isSupported()Z
    .locals 2

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative;

    monitor-enter v0

    .line 367
    :try_start_0
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->initializeHal()V

    .line 368
    sget-object v1, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isSupported()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private static native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private static native native_agps_set_ref_location_cellid(IIIIJIII)V
.end method

.method private static native native_class_init_once()V
.end method

.method private static native native_cleanup()V
.end method

.method private static native native_cleanup_batching()V
.end method

.method private static native native_delete_aiding_data(I)V
.end method

.method private static native native_flush_batch()V
.end method

.method private static native native_get_batch_size()I
.end method

.method private static native native_get_internal_state()Ljava/lang/String;
.end method

.method private static native native_init()Z
.end method

.method private static native native_init_batching()Z
.end method

.method private native native_init_once(Z)V
.end method

.method private static native native_inject_best_location(IDDDFFFFFFJIJD)V
.end method

.method private static native native_inject_gnss_assistance(Landroid/location/GnssAssistance;)V
.end method

.method private static native native_inject_location(IDDDFFFFFFJIJD)V
.end method

.method private static native native_inject_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z
.end method

.method private static native native_inject_ni_supl_message_data([BII)V
.end method

.method private static native native_inject_psds_data([BII)V
.end method

.method private static native native_inject_time(JJI)V
.end method

.method private static native native_is_antenna_info_supported()Z
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_is_gnss_visibility_control_supported()Z
.end method

.method private static native native_is_measurement_corrections_supported()Z
.end method

.method private static native native_is_measurement_supported()Z
.end method

.method private static native native_is_navigation_message_supported()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private static native native_read_nmea([BI)I
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_request_power_stats()V
.end method

.method private static native native_resume_geofence(II)Z
.end method

.method private static native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private static native native_set_position_mode(IIIIIZ)Z
.end method

.method private static native native_start()Z
.end method

.method private static native native_start_antenna_info_listening()Z
.end method

.method private static native native_start_batch(JFZ)Z
.end method

.method private static native native_start_measurement_collection(ZZI)Z
.end method

.method private static native native_start_navigation_message_collection()Z
.end method

.method private static native native_start_nmea_message_collection()Z
.end method

.method private static native native_start_sv_status_collection()Z
.end method

.method private static native native_stop()Z
.end method

.method private static native native_stop_antenna_info_listening()Z
.end method

.method private static native native_stop_batch()Z
.end method

.method private static native native_stop_measurement_collection()Z
.end method

.method private static native native_stop_navigation_message_collection()Z
.end method

.method private static native native_stop_nmea_message_collection()Z
.end method

.method private static native native_stop_sv_status_collection()Z
.end method

.method private static native native_supports_psds()Z
.end method

.method public static declared-synchronized setGnssHalForTest(Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;)V
    .locals 1

    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative;

    monitor-enter v0

    .line 347
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p0, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    const/4 p0, 0x0

    .line 348
    sput-boolean p0, Lcom/android/server/location/gnss/hal/GnssNative;->sGnssHalInitialized:Z

    const/4 p0, 0x0

    .line 349
    sput-object p0, Lcom/android/server/location/gnss/hal/GnssNative;->sInstance:Lcom/android/server/location/gnss/hal/GnssNative;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public addAntennaInfoCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;)V
    .locals 2

    .line 469
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 470
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    return-void
.end method

.method public addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V
    .locals 2

    .line 434
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 435
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    return-void
.end method

.method public addGeofence(IDDDIIII)Z
    .locals 1

    .line 941
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 942
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual/range {p0 .. p11}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->addGeofence(IDDDIIII)Z

    move-result p0

    return p0
.end method

.method public addLocationCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;)V
    .locals 2

    .line 457
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 458
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    return-void
.end method

.method public addMeasurementCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;)V
    .locals 2

    .line 463
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 464
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    return-void
.end method

.method public addNavigationMessageCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;)V
    .locals 2

    .line 475
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 476
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    return-void
.end method

.method public addNmeaCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;)V
    .locals 2

    .line 451
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 452
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    return-void
.end method

.method public addStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;)V
    .locals 2

    .line 439
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 440
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    return-void
.end method

.method public addSvStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;)V
    .locals 2

    .line 445
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 446
    const-class v0, Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    return-void
.end method

.method public cleanup()V
    .locals 1

    .line 574
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 575
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->cleanup()V

    return-void
.end method

.method public cleanupBatching()V
    .locals 1

    .line 890
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 891
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->cleanupBatching()V

    return-void
.end method

.method public deleteAidingData(I)V
    .locals 1

    .line 655
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 656
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->deleteAidingData(I)V

    return-void
.end method

.method public flushBatch()V
    .locals 1

    .line 907
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 908
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->flushBatch()V

    return-void
.end method

.method public getBatchSize()I
    .locals 1

    .line 923
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 924
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->getBatchSize()I

    move-result p0

    return p0
.end method

.method public getCapabilities()Landroid/location/GnssCapabilities;
    .locals 0

    .line 589
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    return-object p0
.end method

.method public getConfiguration()Lcom/android/server/location/gnss/GnssConfiguration;
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    return-object p0
.end method

.method public getHardwareModelName()Ljava/lang/String;
    .locals 0

    .line 603
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareModelName:Ljava/lang/String;

    return-object p0
.end method

.method public getHardwareYear()I
    .locals 0

    .line 596
    iget p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareYear:I

    return p0
.end method

.method public getInternalState()Ljava/lang/String;
    .locals 1

    .line 647
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 648
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->getInternalState()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastKnownPowerStats()Lcom/android/server/location/gnss/GnssPowerStats;
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLastKnownPowerStats:Lcom/android/server/location/gnss/GnssPowerStats;

    return-object p0
.end method

.method public gnssAssistanceInjectRequest()V
    .locals 0

    .line 0
    return-void
.end method

.method public init()Z
    .locals 1

    .line 565
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 566
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->init()Z

    move-result p0

    return p0
.end method

.method public initBatching()Z
    .locals 1

    .line 882
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 883
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->initBatching()Z

    move-result p0

    return p0
.end method

.method public final initializeGnss(Z)V
    .locals 1

    .line 542
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const/4 v0, 0x0

    .line 543
    iput v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTopFlags:I

    .line 544
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->initOnce(Lcom/android/server/location/gnss/hal/GnssNative;Z)V

    .line 548
    iget-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->init()Z

    move-result p1

    const-string v0, "GnssManager"

    if-eqz p1, :cond_0

    .line 549
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->cleanup()V

    .line 550
    const-string p0, "gnss hal initialized"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 552
    :cond_0
    const-string p0, "gnss hal initialization failed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public injectBestLocation(Landroid/location/Location;)V
    .locals 26

    move-object/from16 v0, p0

    .line 713
    iget-boolean v1, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 716
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    or-int/lit8 v1, v1, 0x1

    .line 717
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    or-int/2addr v1, v4

    .line 718
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x8

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    or-int/2addr v1, v4

    .line 719
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x10

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    or-int/2addr v1, v4

    .line 720
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_4

    :cond_4
    move v4, v3

    :goto_4
    or-int/2addr v1, v4

    .line 721
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x40

    goto :goto_5

    :cond_5
    move v4, v3

    :goto_5
    or-int/2addr v1, v4

    .line 722
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x80

    goto :goto_6

    :cond_6
    move v4, v3

    :goto_6
    or-int v6, v1, v4

    .line 724
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    .line 725
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    .line 726
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    .line 727
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v13

    .line 728
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v14

    .line 729
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 730
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v16

    .line 731
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v17

    .line 732
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v18

    .line 733
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v19

    .line 736
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    move v2, v3

    :goto_7
    or-int/lit8 v21, v2, 0x1

    .line 738
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v22

    .line 739
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v24

    .line 741
    iget-object v5, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual/range {v5 .. v25}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectBestLocation(IDDDFFFFFFJIJD)V

    return-void
.end method

.method public injectGnssAssistance(Landroid/location/GnssAssistance;)V
    .locals 0

    .line 0
    return-void
.end method

.method public injectLocation(Landroid/location/Location;)V
    .locals 26

    move-object/from16 v0, p0

    .line 672
    iget-boolean v1, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 673
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 676
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    or-int/lit8 v1, v1, 0x1

    .line 677
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    or-int/2addr v1, v4

    .line 678
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x8

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    or-int/2addr v1, v4

    .line 679
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x10

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    or-int/2addr v1, v4

    .line 680
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_4

    :cond_4
    move v4, v3

    :goto_4
    or-int/2addr v1, v4

    .line 681
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x40

    goto :goto_5

    :cond_5
    move v4, v3

    :goto_5
    or-int/2addr v1, v4

    .line 682
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x80

    goto :goto_6

    :cond_6
    move v4, v3

    :goto_6
    or-int v6, v1, v4

    .line 684
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    .line 685
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    .line 686
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    .line 687
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v13

    .line 688
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v14

    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    .line 690
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v16

    .line 691
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v17

    .line 692
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v18

    .line 693
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v19

    .line 696
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    move v2, v3

    :goto_7
    or-int/lit8 v21, v2, 0x1

    .line 698
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v22

    .line 699
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeUncertaintyNanos()D

    move-result-wide v24

    .line 701
    iget-object v5, v0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual/range {v5 .. v25}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectLocation(IDDDFFFFFFJIJD)V

    :cond_8
    return-void
.end method

.method public injectMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z
    .locals 1

    .line 874
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 875
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z

    move-result p0

    return p0
.end method

.method public injectNiSuplMessageData([BII)V
    .locals 1

    .line 1070
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1071
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectNiSuplMessageData([BII)V

    return-void
.end method

.method public injectPsdsData([BII)V
    .locals 1

    .line 1062
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1063
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectPsdsData([BII)V

    return-void
.end method

.method public injectTime(JJI)V
    .locals 1

    .line 752
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 753
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->injectTime(JJI)V

    return-void
.end method

.method public isAntennaInfoSupported()Z
    .locals 1

    .line 784
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 785
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isAntennaInfoSupported()Z

    move-result p0

    return p0
.end method

.method public isGeofencingSupported()Z
    .locals 1

    .line 931
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 932
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isGeofencingSupported()Z

    move-result p0

    return p0
.end method

.method public isGnssVisibilityControlSupported()Z
    .locals 1

    .line 974
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 975
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isGnssVisibilityControlSupported()Z

    move-result p0

    return p0
.end method

.method public isInEmergencySession()Z
    .locals 1

    .line 1382
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isItarSpeedLimitExceeded()Z
    .locals 0

    .line 611
    iget-boolean p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    return p0
.end method

.method public isMeasurementCorrectionsSupported()Z
    .locals 1

    .line 866
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 867
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isMeasurementCorrectionsSupported()Z

    move-result p0

    return p0
.end method

.method public isMeasurementSupported()Z
    .locals 1

    .line 808
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 809
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isMeasurementSupported()Z

    move-result p0

    return p0
.end method

.method public isNavigationMessageCollectionSupported()Z
    .locals 1

    .line 760
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 761
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isNavigationMessageCollectionSupported()Z

    move-result p0

    return p0
.end method

.method public isPsdsSupported()Z
    .locals 1

    .line 1054
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1055
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->isPsdsSupported()Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$gnssAssistanceInjectRequest$17()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1306
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssAssistanceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GnssAssistanceCallbacks;

    invoke-interface {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssAssistanceCallbacks;->onRequestGnssAssistanceInject()V

    return-void
.end method

.method public final synthetic lambda$isInEmergencySession$29()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1383
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 1384
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->getEsExtensionSec()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 1383
    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/EmergencyHelper;->isInEmergency(J)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$new$0()V
    .locals 2

    .line 401
    const-string v0, "GnssManager"

    const-string v1, "Request for power stats timed out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 402
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->reportGnssPowerStats(Lcom/android/server/location/gnss/GnssPowerStats;)V

    return-void
.end method

.method public final synthetic lambda$onCapabilitiesChanged$13(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1252
    invoke-virtual {p1, p2}, Landroid/location/GnssCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1256
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gnss capabilities changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1258
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1259
    aget-object v1, v1, v0

    invoke-interface {v1, p2, p1}, Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;->onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final synthetic lambda$psdsDownloadRequest$16(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1297
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPsdsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;->onRequestPsdsDownload(I)V

    return-void
.end method

.method public final synthetic lambda$reportAGpsStatus$8(II[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1163
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;->onReportAGpsStatus(II[B)V

    return-void
.end method

.method public final synthetic lambda$reportAntennaInfo$11(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1195
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAntennaInfoCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1196
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative$AntennaInfoCallbacks;->onReportAntennaInfo(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic lambda$reportGeofenceAddStatus$20(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1326
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;->onReportGeofenceAddStatus(II)V

    return-void
.end method

.method public final synthetic lambda$reportGeofencePauseStatus$22(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1338
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;->onReportGeofencePauseStatus(II)V

    return-void
.end method

.method public final synthetic lambda$reportGeofenceRemoveStatus$21(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1332
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;->onReportGeofenceRemoveStatus(II)V

    return-void
.end method

.method public final synthetic lambda$reportGeofenceResumeStatus$23(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1344
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;->onReportGeofenceResumeStatus(II)V

    return-void
.end method

.method public final synthetic lambda$reportGeofenceStatus$19(ILandroid/location/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1320
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;->onReportGeofenceStatus(ILandroid/location/Location;)V

    return-void
.end method

.method public final synthetic lambda$reportGeofenceTransition$18(ILandroid/location/Location;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1313
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    invoke-interface/range {p0 .. p5}, Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;->onReportGeofenceTransition(ILandroid/location/Location;IJ)V

    return-void
.end method

.method public final synthetic lambda$reportLocation$5(ZLandroid/location/Location;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1108
    iget-boolean v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHasFirstFix:Z

    if-nez v2, :cond_0

    .line 1109
    iput-boolean v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHasFirstFix:Z

    .line 1112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStartRealtimeMs:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    move v3, v0

    .line 1113
    :goto_0
    iget-object v4, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 1114
    aget-object v4, v4, v3

    invoke-interface {v4, v2}, Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;->onReportFirstFix(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1118
    :cond_0
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1119
    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    const/high16 v3, 0x43c80000    # 400.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 1120
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    const-string v3, "GnssManager"

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 1121
    const-string/jumbo v2, "speed nearing ITAR threshold - blocking further GNSS output"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1122
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    .line 1123
    const-string/jumbo v2, "speed leaving ITAR threshold - allowing further GNSS output"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_3
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    .line 1128
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v1, :cond_5

    goto :goto_4

    .line 1132
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_6

    .line 1133
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;->onReportLocation(ZLandroid/location/Location;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method public final synthetic lambda$reportLocationBatch$15([Landroid/location/Location;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1289
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1290
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative$LocationCallbacks;->onReportLocations([Landroid/location/Location;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic lambda$reportMeasurementData$10(Landroid/location/GnssMeasurementsEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1182
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1186
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mMeasurementCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1187
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;->onReportMeasurements(Landroid/location/GnssMeasurementsEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final synthetic lambda$reportNavigationMessage$12(Landroid/location/GnssNavigationMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1204
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1208
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNavigationMessageCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1209
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;->onReportNavigationMessage(Landroid/location/GnssNavigationMessage;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final synthetic lambda$reportNfwNotification$28(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1375
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    invoke-interface/range {p0 .. p8}, Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;->onReportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    return-void
.end method

.method public final synthetic lambda$reportNmea$9(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1169
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mItarSpeedLimitExceeded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1173
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNmeaCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1174
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;->onReportNmea(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final synthetic lambda$reportStatus$6(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1141
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1142
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;->onReportStatus(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic lambda$reportSvStatus$7(I[I[F[F[F[F[F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1152
    invoke-static/range {p1 .. p7}, Landroid/location/GnssStatus;->wrap(I[I[F[F[F[F[F)Landroid/location/GnssStatus;

    move-result-object p1

    const/4 p2, 0x0

    .line 1154
    :goto_0
    iget-object p3, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mSvStatusCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;

    array-length p4, p3

    if-ge p2, p4, :cond_0

    .line 1155
    aget-object p3, p3, p2

    invoke-interface {p3, p1}, Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;->onReportSvStatus(Landroid/location/GnssStatus;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic lambda$requestLocation$25(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1355
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    invoke-interface {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;->onRequestLocation(ZZ)V

    return-void
.end method

.method public final synthetic lambda$requestRefLocation$27()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1367
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    invoke-interface {p0}, Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;->onRequestRefLocation()V

    return-void
.end method

.method public final synthetic lambda$requestSetID$24(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1349
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;->onRequestSetID(I)V

    return-void
.end method

.method public final synthetic lambda$requestUtcTime$26()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1361
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTimeCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

    invoke-interface {p0}, Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;->onRequestUtcTime()V

    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V
    .locals 1

    .line 1251
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public pauseGeofence(I)Z
    .locals 1

    .line 958
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 959
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->pauseGeofence(I)Z

    move-result p0

    return p0
.end method

.method public psdsDownloadRequest(I)V
    .locals 1

    .line 1297
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public readNmea([BI)I
    .locals 1

    .line 664
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 665
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->readNmea([BI)I

    move-result p0

    return p0
.end method

.method public register()V
    .locals 3

    .line 530
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 531
    iput-boolean v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v0, 0x0

    .line 533
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->initializeGnss(Z)V

    .line 534
    const-string v1, "GnssManager"

    const-string v2, "gnss hal started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 537
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;->onHalStarted()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeGeofence(I)Z
    .locals 1

    .line 966
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 967
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->removeGeofence(I)Z

    move-result p0

    return p0
.end method

.method public reportAGpsStatus(II[B)V
    .locals 1

    .line 1162
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II[B)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportAntennaInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;)V"
        }
    .end annotation

    .line 1194
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Ljava/util/List;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportGeofenceAddStatus(II)V
    .locals 1

    .line 1325
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportGeofencePauseStatus(II)V
    .locals 1

    .line 1337
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportGeofenceRemoveStatus(II)V
    .locals 1

    .line 1331
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportGeofenceResumeStatus(II)V
    .locals 1

    .line 1343
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportGeofenceStatus(ILandroid/location/Location;)V
    .locals 1

    .line 1319
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;ILandroid/location/Location;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportGeofenceTransition(ILandroid/location/Location;IJ)V
    .locals 7

    .line 1312
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda11;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;ILandroid/location/Location;IJ)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportGnssPowerStats(Lcom/android/server/location/gnss/GnssPowerStats;)V
    .locals 3

    .line 1266
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPowerStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1267
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPowerStatsTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    .line 1269
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLastKnownPowerStats:Lcom/android/server/location/gnss/GnssPowerStats;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1271
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPendingPowerStatsCallbacks:Ljava/util/List;

    new-instance v2, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda8;

    invoke-direct {v2, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/location/gnss/GnssPowerStats;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1272
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPendingPowerStatsCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 1273
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public reportGnssServiceDied()V
    .locals 2

    .line 1088
    const-string v0, "GnssManager"

    const-string v1, "gnss hal died - restarting shortly..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportLocation(ZLandroid/location/Location;)V
    .locals 1

    .line 1107
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;ZLandroid/location/Location;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportLocationBatch([Landroid/location/Location;)V
    .locals 1

    .line 1288
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;[Landroid/location/Location;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportMeasurementData(Landroid/location/GnssMeasurementsEvent;)V
    .locals 1

    .line 1181
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Landroid/location/GnssMeasurementsEvent;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
    .locals 1

    .line 1203
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Landroid/location/GnssNavigationMessage;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportNfwNotification(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .locals 10

    .line 1374
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda28;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportNmea(J)V
    .locals 1

    .line 1168
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;J)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportStatus(I)V
    .locals 1

    .line 1140
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public reportSvStatus(I[I[F[F[F[F[F)V
    .locals 9

    .line 1151
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda12;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I[I[F[F[F[F[F)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public requestLocation(ZZ)V
    .locals 1

    .line 1354
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;ZZ)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public requestPowerStats(Ljava/util/concurrent/Executor;Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;)V
    .locals 3

    .line 988
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 989
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPowerStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 990
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPendingPowerStatsCallbacks:Ljava/util/List;

    new-instance v2, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;

    invoke-direct {v2, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda17;-><init>(Ljava/util/concurrent/Executor;Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 994
    iget-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPendingPowerStatsCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 995
    iget-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p1}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->requestPowerStats()V

    .line 996
    iget-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPowerStatsTimeoutCallback:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 999
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestPowerStatsBlocking()Lcom/android/server/location/gnss/GnssPowerStats;
    .locals 4

    .line 1008
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1009
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1010
    new-instance v2, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;

    invoke-direct {v3, v0, v1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda15;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/location/gnss/hal/GnssNative;->requestPowerStats(Ljava/util/concurrent/Executor;Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;)V

    .line 1016
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1018
    :catch_0
    const-string p0, "GnssManager"

    const-string v1, "Interrupted while waiting for power stats"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 1022
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/gnss/GnssPowerStats;

    return-object p0
.end method

.method public requestRefLocation()V
    .locals 1

    .line 1366
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public requestSetID(I)V
    .locals 1

    .line 1349
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public requestUtcTime()V
    .locals 1

    .line 1361
    new-instance v0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/location/gnss/hal/GnssNative;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public restartHal()V
    .locals 3

    const/4 v0, 0x1

    .line 1097
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->initializeGnss(Z)V

    .line 1098
    const-string v0, "GnssManager"

    const-string v1, "gnss hal restarted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1100
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mBaseCallbacks:[Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1101
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;->onHalRestarted()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resumeGeofence(II)Z
    .locals 1

    .line 950
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 951
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->resumeGeofence(II)Z

    move-result p0

    return p0
.end method

.method public setAGpsCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;)V
    .locals 2

    .line 505
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 506
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 507
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mAGpsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$AGpsCallbacks;

    return-void
.end method

.method public setAgpsReferenceLocationCellId(IIIIJIII)V
    .locals 1

    .line 1046
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1047
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->setAgpsReferenceLocationCellId(IIIIJIII)V

    return-void
.end method

.method public setAgpsServer(ILjava/lang/String;I)V
    .locals 1

    .line 1029
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1030
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->setAgpsServer(ILjava/lang/String;I)V

    return-void
.end method

.method public setAgpsSetId(ILjava/lang/String;)V
    .locals 1

    .line 1037
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1038
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->setAgpsSetId(ILjava/lang/String;)V

    return-void
.end method

.method public setGeofenceCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;)V
    .locals 2

    .line 481
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 482
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 483
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGeofenceCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;

    return-void
.end method

.method public setGnssAssistanceCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$GnssAssistanceCallbacks;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final setGnssHardwareModelName(Ljava/lang/String;)V
    .locals 0

    .line 1283
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareModelName:Ljava/lang/String;

    return-void
.end method

.method public setGnssYearOfHardware(I)V
    .locals 0

    .line 1278
    iput p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHardwareYear:I

    return-void
.end method

.method public setLocationRequestCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;)V
    .locals 2

    .line 493
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 494
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 495
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mLocationRequestCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$LocationRequestCallbacks;

    return-void
.end method

.method public setNotificationCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;)V
    .locals 2

    .line 511
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 512
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 513
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mNotificationCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$NotificationCallbacks;

    return-void
.end method

.method public setPositionMode(IIIIIZ)Z
    .locals 1

    .line 638
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 639
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->setPositionMode(IIIIIZ)Z

    move-result p0

    return p0
.end method

.method public setPsdsCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;)V
    .locals 2

    .line 499
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 500
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPsdsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 501
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mPsdsCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$PsdsCallbacks;

    return-void
.end method

.method public setSignalTypeCapabilities(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssSignalType;",
            ">;)V"
        }
    .end annotation

    .line 1244
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1245
    invoke-virtual {v0, p1}, Landroid/location/GnssCapabilities;->withSignalTypes(Ljava/util/List;)Landroid/location/GnssCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1246
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    return-void
.end method

.method public setSubHalMeasurementCorrectionsCapabilities(I)V
    .locals 1

    .line 1229
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1230
    invoke-virtual {v0, p1}, Landroid/location/GnssCapabilities;->withSubHalMeasurementCorrectionsFlags(I)Landroid/location/GnssCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1231
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    return-void
.end method

.method public setSubHalPowerIndicationCapabilities(I)V
    .locals 1

    .line 1237
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1238
    invoke-virtual {v0, p1}, Landroid/location/GnssCapabilities;->withSubHalPowerFlags(I)Landroid/location/GnssCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1239
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    return-void
.end method

.method public setTimeCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;)V
    .locals 2

    .line 487
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 488
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTimeCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 489
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTimeCallbacks:Lcom/android/server/location/gnss/hal/GnssNative$TimeCallbacks;

    return-void
.end method

.method public setTopHalCapabilities(IZ)V
    .locals 1

    .line 1220
    iget v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTopFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mTopFlags:I

    .line 1221
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1222
    invoke-virtual {v0, p1, p2}, Landroid/location/GnssCapabilities;->withTopHalFlags(IZ)Landroid/location/GnssCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mCapabilities:Landroid/location/GnssCapabilities;

    .line 1223
    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->onCapabilitiesChanged(Landroid/location/GnssCapabilities;Landroid/location/GnssCapabilities;)V

    return-void
.end method

.method public start()Z
    .locals 2

    .line 618
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 619
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mStartRealtimeMs:J

    const/4 v0, 0x0

    .line 620
    iput-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mHasFirstFix:Z

    .line 621
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->start()Z

    move-result p0

    return p0
.end method

.method public startAntennaInfoListening()Z
    .locals 1

    .line 792
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 793
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->startAntennaInfoListening()Z

    move-result p0

    return p0
.end method

.method public startBatch(JFZ)Z
    .locals 1

    .line 899
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 900
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->startBatch(JFZ)Z

    move-result p0

    return p0
.end method

.method public startMeasurementCollection(ZZI)Z
    .locals 1

    .line 817
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 818
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->startMeasurementCollection(ZZI)Z

    move-result p0

    return p0
.end method

.method public startNavigationMessageCollection()Z
    .locals 1

    .line 768
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 769
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->startNavigationMessageCollection()Z

    move-result p0

    return p0
.end method

.method public startNmeaMessageCollection()Z
    .locals 1

    .line 850
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 851
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->startNmeaMessageCollection()Z

    move-result p0

    return p0
.end method

.method public startSvStatusCollection()Z
    .locals 1

    .line 834
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 835
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->startSvStatusCollection()Z

    move-result p0

    return p0
.end method

.method public stop()Z
    .locals 1

    .line 628
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 629
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stop()Z

    move-result p0

    return p0
.end method

.method public stopAntennaInfoListening()Z
    .locals 1

    .line 800
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 801
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stopAntennaInfoListening()Z

    move-result p0

    return p0
.end method

.method public stopBatch()V
    .locals 1

    .line 915
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 916
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stopBatch()V

    return-void
.end method

.method public stopMeasurementCollection()Z
    .locals 1

    .line 826
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 827
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stopMeasurementCollection()Z

    move-result p0

    return p0
.end method

.method public stopNavigationMessageCollection()Z
    .locals 1

    .line 776
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 777
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stopNavigationMessageCollection()Z

    move-result p0

    return p0
.end method

.method public stopNmeaMessageCollection()Z
    .locals 1

    .line 858
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 859
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stopNmeaMessageCollection()Z

    move-result p0

    return p0
.end method

.method public stopSvStatusCollection()Z
    .locals 1

    .line 842
    iget-boolean v0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mRegistered:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 843
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative;->mGnssHal:Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;->stopSvStatusCollection()Z

    move-result p0

    return p0
.end method
