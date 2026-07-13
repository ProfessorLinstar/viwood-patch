.class public Lcom/android/server/audio/SoundDoseHelper;
.super Ljava/lang/Object;
.source "SoundDoseHelper.java"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public final mCachedAudioDeviceCategories:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mCsdAsAFeatureLock:Ljava/lang/Object;

.field public final mCsdStateLock:Ljava/lang/Object;

.field public mCurrentCsd:F

.field public final mDoseRecords:Ljava/util/List;

.field public final mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mGlobalTimeOffsetInSecs:J

.field public mIsCsdAsAFeatureAvailable:Z

.field public mIsCsdAsAFeatureEnabled:Z

.field public mLastMomentaryExposureTimeMs:J

.field public mLastMusicActiveTimeMs:J

.field public final mLogger:Lcom/android/server/utils/EventLogger;

.field public mMcc:I

.field public mMusicActiveIntent:Landroid/app/PendingIntent;

.field public mMusicActiveMs:I

.field public mNextCsdWarning:F

.field public mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

.field public mSafeMediaVolumeDbfs:F

.field public final mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

.field public mSafeMediaVolumeIndex:I

.field public mSafeMediaVolumeState:I

.field public final mSafeMediaVolumeStateLock:Ljava/lang/Object;

.field public final mSettings:Lcom/android/server/audio/SettingsAdapter;

.field public final mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mSoundDoseCallback:Landroid/media/ISoundDoseCallback$Stub;

.field public final mVolumeController:Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;


# direct methods
.method public static synthetic $r8$lambda$-eyX7mXE3YxFQvwPH19lwSCuwYk(Landroid/media/SoundDoseRecord;Landroid/media/SoundDoseRecord;)Z
    .locals 4

    .line 1199
    iget v0, p1, Landroid/media/SoundDoseRecord;->value:F

    iget v1, p0, Landroid/media/SoundDoseRecord;->value:F

    neg-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/media/SoundDoseRecord;->timestamp:J

    iget-wide v2, p0, Landroid/media/SoundDoseRecord;->timestamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Landroid/media/SoundDoseRecord;->averageMel:F

    iget v1, p0, Landroid/media/SoundDoseRecord;->averageMel:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p1, p1, Landroid/media/SoundDoseRecord;->duration:I

    iget p0, p0, Landroid/media/SoundDoseRecord;->duration:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$-sBXj5AnMnsGb4USPhlqVokq-ZE(JLjava/lang/String;)Landroid/media/SoundDoseRecord;
    .locals 0

    .line 1277
    invoke-static {p2, p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->persistedStringToRecord(Ljava/lang/String;J)Landroid/media/SoundDoseRecord;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rggneTbRzo8AfgNHvHRz9NFr10o(Lcom/android/server/audio/SoundDoseHelper;Landroid/media/SoundDoseRecord;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->lambda$onPersistSoundDoseRecords$1(Landroid/media/SoundDoseRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioService(Lcom/android/server/audio/SoundDoseHelper;)Lcom/android/server/audio/AudioService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCsdStateLock(Lcom/android/server/audio/SoundDoseHelper;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentCsd(Lcom/android/server/audio/SoundDoseHelper;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnableCsd(Lcom/android/server/audio/SoundDoseHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastMomentaryExposureTimeMs(Lcom/android/server/audio/SoundDoseHelper;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogger(Lcom/android/server/audio/SoundDoseHelper;)Lcom/android/server/utils/EventLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNextCsdWarning(Lcom/android/server/audio/SoundDoseHelper;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVolumeController(Lcom/android/server/audio/SoundDoseHelper;)Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentCsd(Lcom/android/server/audio/SoundDoseHelper;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastMomentaryExposureTimeMs(Lcom/android/server/audio/SoundDoseHelper;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNextCsdWarning(Lcom/android/server/audio/SoundDoseHelper;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetTimeoutMsForWarning(Lcom/android/server/audio/SoundDoseHelper;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->getTimeoutMsForWarning(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateSoundDoseRecords_l(Lcom/android/server/audio/SoundDoseHelper;[Landroid/media/SoundDoseRecord;F)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/SoundDoseHelper;->updateSoundDoseRecords_l([Landroid/media/SoundDoseRecord;F)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/content/Context;Lcom/android/server/audio/AudioService$AudioHandler;Lcom/android/server/audio/SettingsAdapter;Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;)V
    .locals 5

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Lcom/android/server/utils/EventLogger;

    const/16 v1, 0x32

    const-string v2, "CSD updates"

    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    const/4 v0, 0x0

    .line 164
    iput v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    .line 166
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    .line 192
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const-wide/16 v1, 0x0

    .line 198
    iput-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    const/4 v1, 0x0

    .line 199
    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    .line 207
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 209
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 211
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdAsAFeatureLock:Ljava/lang/Object;

    .line 213
    iput-boolean v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureAvailable:Z

    .line 216
    iput-boolean v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCachedAudioDeviceCategories:Ljava/util/ArrayList;

    .line 222
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    .line 224
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    .line 226
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    const-wide/16 v2, -0x1

    .line 229
    iput-wide v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    const/high16 v4, 0x3f800000    # 1.0f

    .line 233
    iput v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 235
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    .line 240
    iput-wide v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    .line 245
    new-instance v2, Lcom/android/server/audio/SoundDoseHelper$1;

    invoke-direct {v2, p0}, Lcom/android/server/audio/SoundDoseHelper$1;-><init>(Lcom/android/server/audio/SoundDoseHelper;)V

    iput-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDoseCallback:Landroid/media/ISoundDoseCallback$Stub;

    .line 317
    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 318
    iput-object p3, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 319
    iput-object p4, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    .line 320
    iput-object p5, p0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;

    .line 322
    iput-object p2, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    .line 324
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initSafeVolumes()V

    .line 326
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "audio_safe_volume_state"

    invoke-virtual {p4, p1, p3, v0}, Lcom/android/server/audio/SettingsAdapter;->getGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 332
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e0116

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    .line 335
    invoke-static {v2}, Landroid/media/AudioSystem;->getSoundDoseInterface(Landroid/media/ISoundDoseCallback;)Landroid/media/ISoundDose;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initCsd()V

    .line 339
    const-string p1, "alarm"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public static convertToBootTime(JJ)J
    .locals 0

    .line 0
    sub-long/2addr p0, p2

    return-wide p0
.end method

.method public static convertToGlobalTime(JJ)J
    .locals 0

    .line 0
    add-long/2addr p0, p2

    return-wide p0
.end method

.method public static persistedStringToRecord(Ljava/lang/String;J)Landroid/media/SoundDoseRecord;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1284
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1287
    :cond_0
    const-string v1, ","

    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1288
    array-length v2, v1

    const/4 v3, 0x4

    const-string v4, "AS.SoundDoseHelper"

    if-eq v2, v3, :cond_1

    .line 1289
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Expecting 4 fields for a SoundDoseRecord, parsed "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1293
    :cond_1
    new-instance v2, Landroid/media/SoundDoseRecord;

    invoke-direct {v2}, Landroid/media/SoundDoseRecord;-><init>()V

    const/4 v3, 0x0

    .line 1295
    :try_start_0
    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6, p1, p2}, Lcom/android/server/audio/SoundDoseHelper;->convertToBootTime(JJ)J

    move-result-wide p1

    iput-wide p1, v2, Landroid/media/SoundDoseRecord;->timestamp:J

    const/4 p1, 0x1

    .line 1297
    aget-object p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Landroid/media/SoundDoseRecord;->duration:I

    const/4 p1, 0x2

    .line 1298
    aget-object p1, v1, p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, v2, Landroid/media/SoundDoseRecord;->value:F

    const/4 p1, 0x3

    .line 1299
    aget-object p1, v1, p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, v2, Landroid/media/SoundDoseRecord;->averageMel:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 1301
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse persisted SoundDoseRecord: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static persistedStringToRecordList(Ljava/lang/String;J)Ljava/util/List;
    .locals 1

    if-eqz p0, :cond_1

    .line 1273
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1276
    :cond_0
    const-string v0, "\\|"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 1278
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1279
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    .line 1278
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static recordToPersistedString(Landroid/media/SoundDoseRecord;J)Ljava/lang/String;
    .locals 3

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Landroid/media/SoundDoseRecord;->timestamp:J

    invoke-static {v1, v2, p1, p2}, Lcom/android/server/audio/SoundDoseHelper;->convertToGlobalTime(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/media/SoundDoseRecord;->duration:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/media/SoundDoseRecord;->value:F

    .line 1259
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "%.3f"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/SoundDoseRecord;->averageMel:F

    .line 1260
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static safeMediaVolumeStateToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1183
    :cond_0
    const-string p0, "SAFE_MEDIA_VOLUME_ACTIVE"

    return-object p0

    .line 1182
    :cond_1
    const-string p0, "SAFE_MEDIA_VOLUME_INACTIVE"

    return-object p0

    .line 1181
    :cond_2
    const-string p0, "SAFE_MEDIA_VOLUME_DISABLED"

    return-object p0

    .line 1180
    :cond_3
    const-string p0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    return-object p0
.end method


# virtual methods
.method public final cancelMusicActiveCheck()V
    .locals 2

    .line 1120
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 1122
    iput-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method

.method public checkSafeMediaVolume(III)Z
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/SoundDoseHelper;->checkSafeMediaVolume_l(III)Z

    move-result p0

    .line 661
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final checkSafeMediaVolume_l(III)Z
    .locals 2

    .line 667
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    .line 668
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 669
    invoke-virtual {p0, p3}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 670
    invoke-virtual {p0, p3}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    move-result p0

    if-le p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public configureSafeMedia(ZLjava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    const/16 v0, 0x3ea

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e9

    .line 753
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 757
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string p1, "audio.safemedia.bypass"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    const/16 p1, 0x7530

    :goto_1
    int-to-long v4, p1

    add-long/2addr v2, v4

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0x0

    .line 761
    :goto_2
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 762
    invoke-virtual {p0, v0, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 761
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public disableSafeMediaVolume(Ljava/lang/String;)V
    .locals 10

    .line 687
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 688
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 690
    :try_start_1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/SoundDoseHelper;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 692
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 695
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    if-eqz v0, :cond_0

    .line 696
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget v3, v0, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mStreamType:I

    iget v4, v0, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mIndex:I

    iget v5, v0, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mFlags:I

    iget v6, v0, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;->mDevice:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v7, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;ZZ)V

    const/4 p1, 0x0

    .line 702
    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 704
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 692
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 693
    throw p0

    .line 704
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 842
    const-string v0, "  mEnableCsd="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 843
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_0
    const-string v1, "  mCurrentCsd="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 846
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 848
    :cond_0
    :goto_0
    const-string v0, "  mSafeMediaVolumeState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 849
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    invoke-static {v0}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    const-string v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const/4 v0, 0x0

    .line 851
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 852
    const-string v1, "  mSafeMediaVolumeIndex["

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 853
    const-string v1, "]="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 855
    :cond_1
    const-string v0, "  mSafeMediaVolumeDbfs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDbfs:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 856
    const-string v0, "  mMusicActiveMs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 857
    const-string v0, "  mMcc="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 858
    const-string v0, "  mPendingVolumeCommand="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 859
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 860
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 861
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public enforceSafeMediaVolume(Ljava/lang/String;)V
    .locals 6

    .line 636
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 639
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 640
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 641
    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    .line 642
    invoke-virtual {p0, v3}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    move-result v5

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    .line 644
    invoke-virtual {v0, v5, v3, p1, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    .line 646
    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 647
    invoke-virtual {v4, v1, v3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 646
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public enforceSafeMediaVolumeIfActive(Ljava/lang/String;)V
    .locals 3

    .line 628
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 630
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 632
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

.method public forceComputeCsdOnAllDevices(Z)V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdForTestApi()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 507
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    .line 508
    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_1

    .line 509
    const-string p0, "Sound dose interface not initialized"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 514
    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Landroid/media/ISoundDose;->forceComputeCsdOnAllDevices(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 516
    const-string p1, "Exception while forcing CSD computation on all devices"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public forceUseFrameworkMel(Z)V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdForTestApi()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 486
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    .line 487
    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_1

    .line 488
    const-string p0, "Sound dose interface not initialized"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 493
    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Landroid/media/ISoundDose;->forceUseFrameworkMel(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 495
    const-string p1, "Exception while forcing the internal MEL computation"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getCsd()F
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdForTestApi()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 414
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    .line 415
    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_1

    .line 416
    const-string p0, "Sound dose interface not initialized"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 421
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/media/ISoundDose;->getCsd()F

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 423
    const-string v2, "Exception while getting the CSD value"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public getOutputRs2UpperBound()F
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 365
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    .line 366
    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_1

    .line 367
    const-string p0, "Sound dose interface not initialized"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 372
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/media/ISoundDose;->getOutputRs2UpperBound()F

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 374
    const-string v2, "Exception while getting the RS2 exposure value"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final getSafeDeviceMediaVolumeIndex(I)I
    .locals 7

    .line 1132
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x4000000

    if-eq p1, v0, :cond_2

    const/4 p0, -0x1

    return p0

    .line 1138
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    return p0

    .line 1147
    :cond_2
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    .line 1148
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v1

    .line 1150
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0117

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDbfs:F

    :goto_1
    sub-int v3, v2, v0

    .line 1153
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_6

    add-int v3, v2, v0

    .line 1154
    div-int/lit8 v3, v3, 0x2

    .line 1155
    invoke-static {v1, v3, p1}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v4

    .line 1157
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 1160
    :cond_3
    iget v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDbfs:F

    cmpl-float v6, v4, v5

    if-nez v6, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    :goto_2
    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getSafeMediaVolumeIndex(I)I
    .locals 2

    .line 776
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 777
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getTimeoutMsForWarning(I)I
    .locals 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    const/16 v0, 0x1388

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    const/4 v0, -0x1

    if-eq p1, p0, :cond_0

    .line 1097
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid CSD warning "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v1, "AS.SoundDoseHelper"

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v0

    :cond_1
    const/16 p0, 0x1b58

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 805
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 836
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected msg to handle: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.SoundDoseHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 833
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->onLowerVolumeToRs1()V

    return-void

    .line 824
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 825
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 826
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 829
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 830
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result p1

    .line 829
    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/android/server/audio/SoundDoseHelper;->updateDoseAttenuation(IIIZ)V

    return-void

    .line 821
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->onPersistSoundDoseRecords()V

    return-void

    .line 815
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 816
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "unsafe_volume_music_active_ms"

    const/4 v2, -0x2

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/android/server/audio/SettingsAdapter;->putSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    .line 812
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->onPersistSafeVolumeState(I)V

    return-void

    :pswitch_5
    const/16 v3, 0x3ea

    if-ne v0, v3, :cond_1

    move v1, v2

    .line 808
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/audio/SoundDoseHelper;->onConfigureSafeMedia(ZLjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initCachedAudioDeviceCategories(Ljava/util/Collection;)V
    .locals 3

    .line 595
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AdiDeviceState;

    .line 596
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    new-instance v1, Landroid/media/ISoundDose$AudioDeviceCategory;

    invoke-direct {v1}, Landroid/media/ISoundDose$AudioDeviceCategory;-><init>()V

    .line 599
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/media/ISoundDose$AudioDeviceCategory;->address:Ljava/lang/String;

    .line 600
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->getInternalDeviceType()I

    move-result v2

    iput v2, v1, Landroid/media/ISoundDose$AudioDeviceCategory;->internalAudioType:I

    .line 602
    invoke-virtual {v0}, Lcom/android/server/audio/AdiDeviceState;->getAudioDeviceCategory()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v1, Landroid/media/ISoundDose$AudioDeviceCategory;->csdCompatible:Z

    .line 603
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCachedAudioDeviceCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final initCsd()V
    .locals 7

    .line 932
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ISoundDose;

    if-nez v0, :cond_0

    .line 934
    const-string p0, "AS.SoundDoseHelper"

    const-string v0, "ISoundDose instance is null."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 939
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/ISoundDose;->setCsdEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 941
    const-string v2, "AS.SoundDoseHelper"

    const-string v3, "Cannot disable CSD"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 944
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 948
    :cond_1
    const-string v1, "AS.SoundDoseHelper"

    const-string v2, "Initializing sound dose"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 951
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCachedAudioDeviceCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 952
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCachedAudioDeviceCategories:Ljava/util/ArrayList;

    new-array v3, v1, [Landroid/media/ISoundDose$AudioDeviceCategory;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/ISoundDose$AudioDeviceCategory;

    invoke-interface {v0, v2}, Landroid/media/ISoundDose;->initCachedAudioDeviceCategories([Landroid/media/ISoundDose$AudioDeviceCategory;)V

    .line 954
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCachedAudioDeviceCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 957
    const-string v2, "AS.SoundDoseHelper"

    const-string v3, "Exception while initializing the cached audio device categories"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 960
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdAsAFeatureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 961
    :try_start_2
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 962
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "audio_safe_csd_as_a_feature_enabled"

    const/4 v5, -0x2

    .line 961
    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/server/audio/SettingsAdapter;->getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    .line 965
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 967
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 968
    :try_start_3
    iget-wide v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    .line 969
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 972
    :cond_4
    :goto_3
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    .line 974
    const-string v3, "audio_safe_csd_current_value"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/audio/SoundDoseHelper;->parseGlobalSettingFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_5

    .line 977
    const-string v0, "audio_safe_csd_next_warning"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v3}, Lcom/android/server/audio/SoundDoseHelper;->parseGlobalSettingFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 979
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 980
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "audio_safe_csd_dose_records"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/SettingsAdapter;->getGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    .line 979
    invoke-static {v0, v3, v4}, Lcom/android/server/audio/SoundDoseHelper;->persistedStringToRecordList(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 984
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 985
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->sanitizeDoseRecords_l()V

    .line 988
    :cond_5
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 990
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundDoseHelper;->reset(Z)V

    return-void

    .line 988
    :goto_4
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 965
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method public initSafeMediaVolumeIndex()V
    .locals 4

    const/4 v0, 0x0

    .line 767
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 768
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 769
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 770
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundDoseHelper;->getSafeDeviceMediaVolumeIndex(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public initSafeVolumes()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 346
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 348
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 350
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 352
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const v1, 0x20000002

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 354
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 356
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/16 v0, 0x80

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public invalidatePendingVolumeCommand()V
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 800
    :try_start_0
    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    .line 801
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isCsdAsAFeatureAvailable()Z
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdAsAFeatureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureAvailable:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 542
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isCsdAsAFeatureEnabled()Z
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdAsAFeatureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 547
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 548
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isCsdEnabled()Z
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 525
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    .line 526
    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_1

    .line 527
    const-string p0, "Sound dose interface not initialized"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 532
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/media/ISoundDose;->isSoundDoseHalSupported()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 534
    const-string v2, "Exception while querying the csd enabled status"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final synthetic lambda$onPersistSoundDoseRecords$1(Landroid/media/SoundDoseRecord;)Ljava/lang/String;
    .locals 2

    .line 1249
    iget-wide v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    invoke-static {p1, v0, v1}, Lcom/android/server/audio/SoundDoseHelper;->recordToPersistedString(Landroid/media/SoundDoseRecord;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCheckMusicActive(Ljava/lang/String;Z)V
    .locals 8

    .line 722
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    :try_start_0
    iget v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 724
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v1

    .line 725
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    .line 726
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->scheduleMusicActiveCheck()V

    .line 727
    iget-object p2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p2, v2, v1}, Lcom/android/server/audio/AudioService;->getVolumeForDeviceIgnoreMute(II)I

    move-result p2

    .line 729
    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    move-result v1

    if-le p2, v1, :cond_3

    .line 731
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 732
    iget-wide v6, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    cmp-long p2, v6, v4

    if-eqz p2, :cond_0

    .line 733
    iget p2, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    sub-long v3, v1, v6

    long-to-int v3, v3

    add-int/2addr p2, v3

    iput p2, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 735
    :cond_0
    :goto_0
    iput-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 736
    const-string p2, "AS.SoundDoseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckMusicActive() mMusicActiveMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget p2, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    const v1, 0x44aa200

    if-le p2, v1, :cond_1

    const/4 p2, 0x1

    .line 738
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/SoundDoseHelper;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 739
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 741
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->saveMusicActiveMs()V

    goto :goto_1

    .line 744
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->cancelMusicActiveCheck()V

    .line 745
    iput-wide v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 748
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onConfigureSafeMedia(ZLjava/lang/String;)V
    .locals 3

    .line 994
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdEnabled(Ljava/lang/String;)V

    .line 996
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 997
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    .line 998
    iget v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    if-ne v2, v1, :cond_0

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 999
    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x10e0116

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    .line 1001
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initSafeMediaVolumeIndex()V

    .line 1003
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SoundDoseHelper;->updateSafeMediaVolume_l(Ljava/lang/String;)V

    .line 1005
    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    .line 1007
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onLowerVolumeToRs1()V
    .locals 11

    .line 1330
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    .line 1331
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 1332
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 1330
    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioService;->getDevicesForAttributesInt(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1333
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v2, "AS.SoundDoseHelper"

    if-eqz v1, :cond_0

    .line 1334
    const-string p0, "Cannot lower the volume to RS1, no devices registered for USAGE_MEDIA"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1337
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/media/AudioDeviceAttributes;

    .line 1338
    invoke-virtual {v7}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v0

    .line 1339
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    move-result v1

    div-int/lit8 v5, v1, 0xa

    .line 1340
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    new-instance v3, Landroid/media/VolumeInfo$Builder;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/media/VolumeInfo$Builder;-><init>(I)V

    .line 1341
    invoke-virtual {v3}, Landroid/media/VolumeInfo$Builder;->build()Landroid/media/VolumeInfo;

    move-result-object v3

    const-string/jumbo v4, "sounddosehelper"

    .line 1340
    invoke-virtual {v1, v3, v7, v4}, Lcom/android/server/audio/AudioService;->getDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)Landroid/media/VolumeInfo;

    move-result-object v1

    .line 1344
    invoke-virtual {v1}, Landroid/media/VolumeInfo;->getVolumeIndex()I

    move-result v3

    if-ge v5, v3, :cond_1

    .line 1345
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    invoke-static {}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->getLowerVolumeToRs1Event()Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 1346
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    .line 1347
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x3

    const/4 v6, 0x0

    .line 1346
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/audio/AudioService;->setStreamVolumeWithAttributionInt(IIILandroid/media/AudioDeviceAttributes;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1350
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The current volume "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/VolumeInfo;->getVolumeIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for device type "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is already smaller or equal to the safe index volume "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPersistSafeVolumeState(I)V
    .locals 2

    .line 1173
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "audio_safe_volume_state"

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/server/audio/SettingsAdapter;->putGlobalInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final onPersistSoundDoseRecords()V
    .locals 6

    .line 1235
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1236
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1240
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "audio_safe_csd_current_value"

    iget v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    .line 1242
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    .line 1240
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/audio/SettingsAdapter;->putGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1243
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "audio_safe_csd_next_warning"

    iget v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 1245
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    .line 1243
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/audio/SettingsAdapter;->putGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1246
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "audio_safe_csd_dose_records"

    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    .line 1248
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/audio/SoundDoseHelper;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string/jumbo v4, "|"

    .line 1251
    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    .line 1250
    invoke-interface {p0, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1246
    invoke-virtual {v1, v2, v3, p0}, Lcom/android/server/audio/SettingsAdapter;->putGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1252
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final parseGlobalSettingFloat(Ljava/lang/String;F)F
    .locals 3

    .line 1309
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/audio/SettingsAdapter;->getGlobalString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1311
    const-string v0, "AS.SoundDoseHelper"

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1318
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing float from settings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p2

    .line 1312
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No value stored in settings "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public raiseVolumeDisplaySafeMediaVolume(IIII)Z
    .locals 0

    .line 786
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/SoundDoseHelper;->checkSafeMediaVolume(III)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 790
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;

    invoke-interface {p0, p4}, Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;->postDisplaySafeVolumeWarning(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public reset(Z)V
    .locals 4

    .line 865
    const-string v0, "AS.SoundDoseHelper"

    const-string v1, "Reset the sound dose helper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 868
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDoseCallback:Landroid/media/ISoundDoseCallback$Stub;

    invoke-static {v0}, Landroid/media/AudioSystem;->getSoundDoseInterface(Landroid/media/ISoundDoseCallback;)Landroid/media/ISoundDose;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 871
    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 873
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ISoundDose;

    if-eqz v0, :cond_1

    .line 874
    invoke-interface {v0}, Landroid/media/ISoundDose;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 875
    iget v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 876
    const-string v1, "AS.SoundDoseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resetting the saved sound dose value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/media/SoundDoseRecord;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/SoundDoseRecord;

    .line 880
    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    invoke-interface {v0, p0, v1}, Landroid/media/ISoundDose;->resetCsd(F[Landroid/media/SoundDoseRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 886
    :catch_0
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public resetCsdTimeouts()V
    .locals 3

    .line 466
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdForTestApi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, -0x1

    .line 474
    :try_start_0
    iput-wide v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    .line 475
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public restoreMusicActiveMs()V
    .locals 6

    .line 618
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 620
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "unsafe_volume_music_active_ms"

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/android/server/audio/SettingsAdapter;->getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const v2, 0x44aa200

    .line 619
    invoke-static {v1, v5, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    .line 624
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public safeDevicesContains(I)Z
    .locals 1

    .line 795
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public safeMediaVolumeIndex(I)I
    .locals 0

    .line 609
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    .line 611
    sget-object p0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 p1, 0x3

    aget p0, p0, p1

    mul-int/lit8 p0, p0, 0xa

    :cond_0
    return p0
.end method

.method public final sanitizeDoseRecords_l()V
    .locals 3

    .line 1219
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x28f

    if-le v0, v1, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .line 1221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " records from the total of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    .line 1222
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1221
    const-string v2, "AS.SoundDoseHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1225
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 1226
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1227
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final saveMusicActiveMs()V
    .locals 3

    .line 1128
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    const/4 v1, 0x0

    const/16 v2, 0x3ec

    invoke-virtual {v0, v2, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public scheduleMusicActiveCheck()V
    .locals 6

    .line 709
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 710
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->cancelMusicActiveCheck()V

    .line 711
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.audio.action.CHECK_MUSIC_ACTIVE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0xc000000

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    .line 715
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 716
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x2

    .line 715
    invoke-virtual {v1, v4, v2, v3, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 718
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAudioDeviceCategory(Ljava/lang/String;IZ)V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    .line 577
    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_1

    .line 578
    const-string p0, "Sound dose interface not initialized"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 583
    :cond_1
    :try_start_0
    new-instance v1, Landroid/media/ISoundDose$AudioDeviceCategory;

    invoke-direct {v1}, Landroid/media/ISoundDose$AudioDeviceCategory;-><init>()V

    .line 585
    iput-object p1, v1, Landroid/media/ISoundDose$AudioDeviceCategory;->address:Ljava/lang/String;

    .line 586
    iput p2, v1, Landroid/media/ISoundDose$AudioDeviceCategory;->internalAudioType:I

    .line 587
    iput-boolean p3, v1, Landroid/media/ISoundDose$AudioDeviceCategory;->csdCompatible:Z

    .line 588
    invoke-interface {p0, v1}, Landroid/media/ISoundDose;->setAudioDeviceCategory(Landroid/media/ISoundDose$AudioDeviceCategory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 590
    const-string p1, "Exception while setting the audio device category"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setCsd(F)V
    .locals 6

    .line 429
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdForTestApi()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_0
    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    float-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    .line 439
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    .line 441
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 443
    iget v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 444
    new-instance v1, Landroid/media/SoundDoseRecord;

    invoke-direct {v1}, Landroid/media/SoundDoseRecord;-><init>()V

    .line 445
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v1, Landroid/media/SoundDoseRecord;->timestamp:J

    .line 446
    iput p1, v1, Landroid/media/SoundDoseRecord;->value:F

    .line 447
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 449
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/media/SoundDoseRecord;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/SoundDoseRecord;

    .line 450
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    if-nez p0, :cond_2

    .line 454
    const-string p0, "AS.SoundDoseHelper"

    const-string p1, "Sound dose interface not initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 459
    :cond_2
    :try_start_1
    invoke-interface {p0, p1, v1}, Landroid/media/ISoundDose;->resetCsd(F[Landroid/media/SoundDoseRecord;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 461
    const-string p1, "AS.SoundDoseHelper"

    const-string v0, "Exception while setting the CSD value"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    .line 450
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public setCsdAsAFeatureEnabled(Z)V
    .locals 8

    .line 553
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdAsAFeatureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 554
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureAvailable:Z

    if-eqz v1, :cond_0

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 555
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    .line 556
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :try_start_1
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "audio_safe_csd_as_a_feature_enabled"

    .line 560
    iget-boolean v6, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    const/4 v7, -0x2

    .line 558
    invoke-virtual {p1, v1, v5, v6, v7}, Lcom/android/server/audio/SettingsAdapter;->putSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 562
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 564
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 567
    const-string/jumbo p1, "setCsdAsAFeatureEnabled"

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdEnabled(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_1
    move-exception p0

    .line 562
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 563
    throw p0

    .line 564
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public setOutputRs2UpperBound(F)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ISoundDose;

    .line 385
    const-string v0, "AS.SoundDoseHelper"

    if-nez p0, :cond_1

    .line 386
    const-string p0, "Sound dose interface not initialized"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 391
    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Landroid/media/ISoundDose;->setOutputRs2UpperBound(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 393
    const-string p1, "Exception while setting the RS2 exposure value"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    .locals 4

    .line 1103
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    if-ne v0, v3, :cond_0

    .line 1106
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 1107
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SoundDoseHelper;->enforceSafeMediaVolume(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-ne v0, v2, :cond_1

    .line 1109
    iput v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 1110
    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    const-wide/16 p1, 0x0

    .line 1111
    iput-wide p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    .line 1112
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->saveMusicActiveMs()V

    .line 1113
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->scheduleMusicActiveCheck()V

    :cond_1
    return-void
.end method

.method public final updateCsdEnabled(Ljava/lang/String;)V
    .locals 6

    .line 1054
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "audio.safemedia.csd.force"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1058
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110224

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1060
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110225

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 1062
    :cond_0
    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    .line 1064
    :goto_0
    iget-object v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdAsAFeatureLock:Ljava/lang/Object;

    monitor-enter v5

    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 1066
    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureAvailable:Z

    .line 1067
    iget-boolean v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    move v2, v3

    .line 1068
    :cond_4
    const-string v0, "AS.SoundDoseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": CSD as a feature is not enforced and enabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    goto :goto_2

    .line 1071
    :cond_5
    iput-boolean v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureAvailable:Z

    .line 1073
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1075
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1076
    const-string v0, "AS.SoundDoseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": enabled CSD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initCsd()V

    .line 1079
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initSafeMediaVolumeIndex()V

    .line 1081
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->updateSafeMediaVolume_l(Ljava/lang/String;)V

    .line 1082
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_6
    return-void

    .line 1073
    :goto_3
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final updateCsdForTestApi()Z
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "audio.safemedia.csd.force"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 400
    const-string v0, "SystemPropertiesChangeCallback"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdEnabled(Ljava/lang/String;)V

    .line 403
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final updateDoseAttenuation(IIIZ)V
    .locals 2

    .line 891
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ISoundDose;

    .line 896
    const-string v1, "AS.SoundDoseHelper"

    if-nez v0, :cond_1

    .line 897
    const-string p0, "Can not apply attenuation. ISoundDose itf is null."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p4, :cond_3

    .line 903
    :try_start_0
    iget-object p3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p3

    const/4 p4, 0x0

    if-ltz p3, :cond_2

    .line 904
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    invoke-static {p4, p2}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->getAbsVolumeAttenuationEvent(FI)Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 908
    :cond_2
    :goto_0
    invoke-interface {v0, p4, p2}, Landroid/media/ISoundDose;->updateAttenuation(FI)V

    return-void

    .line 913
    :cond_3
    sget-object p4, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    const/4 p4, 0x3

    if-ne p3, p4, :cond_5

    .line 914
    invoke-virtual {p0, p2}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    move-result p3

    if-eqz p3, :cond_5

    add-int/lit8 p3, p1, 0x5

    .line 915
    div-int/lit8 p3, p3, 0xa

    invoke-static {p4, p3, p2}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result p3

    neg-float p3, p3

    .line 918
    iget-object p4, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p4

    if-ltz p4, :cond_4

    .line 919
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    .line 920
    invoke-static {p3, p2}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->getAbsVolumeAttenuationEvent(FI)Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    move-result-object p4

    .line 919
    invoke-virtual {p0, p4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 923
    :cond_4
    invoke-interface {v0, p3, p2}, Landroid/media/ISoundDose;->updateAttenuation(FI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 926
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not apply the attenuation for MEL calculation with volume index "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public final updateSafeMediaVolume_l(Ljava/lang/String;)V
    .locals 6

    .line 1013
    const-string v0, "audio.safemedia.bypass"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1014
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1015
    :goto_1
    const-string v3, "audio.safemedia.force"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1019
    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110224

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_5

    :cond_2
    if-nez v0, :cond_5

    .line 1033
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v0, v2, :cond_4

    .line 1034
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    if-nez v0, :cond_3

    .line 1035
    iput v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 1036
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_2

    .line 1039
    :cond_3
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const-wide/16 v4, 0x0

    .line 1040
    iput-wide v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    :cond_4
    :goto_2
    move v2, v3

    goto :goto_3

    .line 1045
    :cond_5
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    .line 1048
    :goto_3
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 p1, 0x3eb

    const/4 v0, 0x0

    .line 1049
    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1048
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final updateSoundDoseRecords_l([Landroid/media/SoundDoseRecord;F)V
    .locals 10

    .line 1191
    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v5, p1, v4

    .line 1192
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  new record: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AS.SoundDoseHelper"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget v6, v5, Landroid/media/SoundDoseRecord;->duration:I

    int-to-long v8, v6

    add-long/2addr v1, v8

    .line 1195
    iget v6, v5, Landroid/media/SoundDoseRecord;->value:F

    const/4 v8, 0x0

    cmpg-float v9, v6, v8

    if-gez v9, :cond_0

    .line 1198
    iget-object v6, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    new-instance v8, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;

    invoke-direct {v8, v5}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;-><init>(Landroid/media/SoundDoseRecord;)V

    invoke-interface {v6, v8}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find cached record to remove: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    cmpl-float v6, v6, v8

    if-lez v6, :cond_1

    .line 1205
    iget-object v6, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1209
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->sanitizeDoseRecords_l()V

    .line 1211
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v0, 0x3ed

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1214
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    invoke-static {p2, v1, v2}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->getDoseUpdateEvent(FJ)Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void
.end method

.method public willDisplayWarningAfterCheckVolume(IIII)Z
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 676
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/SoundDoseHelper;->checkSafeMediaVolume_l(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 677
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;

    invoke-interface {v1, p4}, Lcom/android/server/audio/AudioService$ISafeHearingVolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 678
    new-instance v1, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    invoke-direct {v1, p1, p2, p4, p3}, Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

    const/4 p0, 0x1

    .line 680
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 682
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
