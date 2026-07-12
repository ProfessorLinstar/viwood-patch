.class public Lcom/android/server/media/quality/MediaQualityService;
.super Lcom/android/server/SystemService;
.source "MediaQualityService.java"


# instance fields
.field public final mAmbientBacklightLock:Ljava/lang/Object;

.field public final mCallbackRecords:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentPictureHandleToOriginal:Lcom/android/server/media/quality/BiMap;

.field public final mHalAmbientBacklightCallback:Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;

.field public mHalNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

.field public final mHandleToPictureProfile:Ljava/util/Map;

.field public mHandler:Landroid/os/Handler;

.field public mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

.field public final mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

.field public mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

.field public mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

.field public final mPackageDefaultPictureProfileHandleMap:Ljava/util/Map;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPictureProfileAdjListener:Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;

.field public final mPictureProfileLock:Ljava/lang/Object;

.field public mPictureProfileSharedPreference:Landroid/content/SharedPreferences;

.field public final mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

.field public mPpChangedListener:Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;

.field public mSoundProfileAdjListener:Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;

.field public final mSoundProfileLock:Ljava/lang/Object;

.field public mSoundProfileSharedPreference:Landroid/content/SharedPreferences;

.field public final mSoundProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

.field public mSpChangedListener:Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;

.field public mSurfaceControlActivePictureListener:Landroid/view/SurfaceControlActivePictureListener;

.field public final mUserStateLock:Ljava/lang/Object;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentPictureHandleToOriginal(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mCurrentPictureHandleToOriginal:Lcom/android/server/media/quality/BiMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHalAmbientBacklightCallback(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mHalAmbientBacklightCallback:Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHalNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$HalNotifier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mHalNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandleToPictureProfile(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mHandleToPictureProfile:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/media/quality/MediaQualityService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMediaQuality(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IMediaQuality;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMediaQualityDbHelper(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityDbHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMqDatabaseUtils(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMqManagerNotifier(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageDefaultPictureProfileHandleMap(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPackageDefaultPictureProfileHandleMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPictureProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPictureProfileSharedPreference(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/SharedPreferences;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileSharedPreference:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPictureProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPpChangedListener(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPpChangedListener:Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSoundProfileLock(Lcom/android/server/media/quality/MediaQualityService;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSoundProfileSharedPreference(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/SharedPreferences;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileSharedPreference:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSoundProfileTempIdMap(Lcom/android/server/media/quality/MediaQualityService;)Lcom/android/server/media/quality/BiMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpChangedListener(Lcom/android/server/media/quality/MediaQualityService;)Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mSpChangedListener:Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserStates(Lcom/android/server/media/quality/MediaQualityService;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mUserStates:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetOrCreateUserState(Lcom/android/server/media/quality/MediaQualityService;I)Lcom/android/server/media/quality/MediaQualityService$UserState;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService;->getOrCreateUserState(I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleOnActivePicturesChanged(Lcom/android/server/media/quality/MediaQualityService;[Landroid/view/SurfaceControlActivePicture;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService;->handleOnActivePicturesChanged([Landroid/view/SurfaceControlActivePicture;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misPackageDefaultPictureProfile(Lcom/android/server/media/quality/MediaQualityService;Landroid/media/quality/PictureProfile;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService;->isPackageDefaultPictureProfile(Landroid/media/quality/PictureProfile;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetVendorPictureParameters(Lcom/android/server/media/quality/MediaQualityService;Landroid/hardware/tv/mediaquality/PictureParameters;Landroid/os/Parcel;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/quality/MediaQualityService;->setVendorPictureParameters(Landroid/hardware/tv/mediaquality/PictureParameters;Landroid/os/Parcel;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetVendorSoundParameters(Lcom/android/server/media/quality/MediaQualityService;Landroid/hardware/tv/mediaquality/SoundParameters;Landroid/os/Parcel;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/quality/MediaQualityService;->setVendorSoundParameters(Landroid/hardware/tv/mediaquality/SoundParameters;Landroid/os/Parcel;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPackageDefaultPictureProfileHandleMap:Ljava/util/Map;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mCallbackRecords:Ljava/util/Map;

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mUserStates:Landroid/util/SparseArray;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileLock:Ljava/lang/Object;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mUserStateLock:Ljava/lang/Object;

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mAmbientBacklightLock:Ljava/lang/Object;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mHandleToPictureProfile:Ljava/util/Map;

    .line 140
    new-instance v0, Lcom/android/server/media/quality/BiMap;

    invoke-direct {v0}, Lcom/android/server/media/quality/BiMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mCurrentPictureHandleToOriginal:Lcom/android/server/media/quality/BiMap;

    .line 144
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService;->mContext:Landroid/content/Context;

    .line 145
    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;-><init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mHalAmbientBacklightCallback:Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 147
    new-instance v0, Lcom/android/server/media/quality/BiMap;

    invoke-direct {v0}, Lcom/android/server/media/quality/BiMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    .line 148
    new-instance v0, Lcom/android/server/media/quality/BiMap;

    invoke-direct {v0}, Lcom/android/server/media/quality/BiMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    .line 149
    new-instance v0, Lcom/android/server/media/quality/MediaQualityDbHelper;

    invoke-direct {v0, p1}, Lcom/android/server/media/quality/MediaQualityDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

    const/4 v2, 0x1

    .line 150
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    const-wide/16 v2, 0x1e

    .line 151
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;->setIdleConnectionTimeout(J)V

    .line 152
    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;-><init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    .line 153
    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;-><init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    .line 154
    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;-><init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mHalNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    .line 155
    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;-><init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileAdjListener:Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;

    .line 156
    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;-><init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileAdjListener:Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mHandler:Landroid/os/Handler;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    .line 163
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "picture_profile_preference"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileSharedPreference:Landroid/content/SharedPreferences;

    .line 167
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "sound_profile_preference"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileSharedPreference:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final getOrCreateUserState(I)Lcom/android/server/media/quality/MediaQualityService$UserState;
    .locals 3

    .line 1373
    invoke-virtual {p0, p1}, Lcom/android/server/media/quality/MediaQualityService;->getUserState(I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1375
    new-instance v0, Lcom/android/server/media/quality/MediaQualityService$UserState;

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/server/media/quality/MediaQualityService$UserState;-><init>(Lcom/android/server/media/quality/MediaQualityService;Landroid/content/Context;ILcom/android/server/media/quality/MediaQualityService-IA;)V

    .line 1376
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mUserStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1377
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1378
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-object v0
.end method

.method public final getUserState(I)Lcom/android/server/media/quality/MediaQualityService$UserState;
    .locals 1

    .line 1385
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mUserStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1386
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/quality/MediaQualityService$UserState;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1387
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleOnActivePicturesChanged([Landroid/view/SurfaceControlActivePicture;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 230
    iget-object v3, v1, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    .line 232
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/android/server/media/quality/MediaQualityService;->getOrCreateUserState(I)Lcom/android/server/media/quality/MediaQualityService$UserState;

    move-result-object v5

    .line 233
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmActiveProcessingPictureCallbackList(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_6

    .line 236
    :try_start_1
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmActiveProcessingPictureCallbackList(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    move-result-object v0

    .line 238
    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/quality/IActiveProcessingPictureListener;

    .line 239
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmActiveProcessingPictureListenerMap(Lcom/android/server/media/quality/MediaQualityService$UserState;)Ljava/util/Map;

    move-result-object v8

    .line 240
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;

    if-nez v8, :cond_0

    goto/16 :goto_6

    .line 244
    :cond_0
    invoke-static {v8}, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;->-$$Nest$fgetmUid(Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;)I

    move-result v9

    .line 245
    iget-object v10, v1, Lcom/android/server/media/quality/MediaQualityService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.MANAGE_GLOBAL_PICTURE_QUALITY_SERVICE"

    invoke-static {v8}, Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;->-$$Nest$fgetmPid(Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureListenerInfo;)I

    move-result v8

    invoke-virtual {v10, v11, v8, v9}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v4

    .line 249
    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 250
    array-length v12, v2

    move v13, v4

    :goto_2
    if-ge v13, v12, :cond_5

    aget-object v14, v2, v13

    if-nez v8, :cond_2

    .line 251
    invoke-virtual {v14}, Landroid/view/SurfaceControlActivePicture;->getOwnerUid()I

    move-result v15

    if-eq v15, v9, :cond_2

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_5

    .line 255
    :cond_2
    iget-object v15, v1, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    .line 256
    invoke-virtual {v14}, Landroid/view/SurfaceControlActivePicture;->getPictureProfileHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 255
    invoke-virtual {v15, v4}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_4

    .line 260
    :cond_3
    new-instance v15, Landroid/media/quality/ActiveProcessingPicture;

    .line 261
    invoke-virtual {v14}, Landroid/view/SurfaceControlActivePicture;->getLayerId()I

    move-result v10

    invoke-virtual {v14}, Landroid/view/SurfaceControlActivePicture;->getOwnerUid()I

    move-result v14

    if-eq v14, v9, :cond_4

    const/4 v14, 0x1

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_3
    invoke-direct {v15, v10, v4, v14}, Landroid/media/quality/ActiveProcessingPicture;-><init>(ILjava/lang/String;Z)V

    .line 260
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_2

    .line 265
    :cond_5
    invoke-interface {v0, v11}, Landroid/media/quality/IActiveProcessingPictureListener;->onActiveProcessingPicturesChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 267
    :goto_5
    :try_start_2
    const-string v4, "MediaQualityService"

    const-string v8, "failed to report added AD service to callback"

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 270
    :cond_6
    invoke-static {v5}, Lcom/android/server/media/quality/MediaQualityService$UserState;->-$$Nest$fgetmActiveProcessingPictureCallbackList(Lcom/android/server/media/quality/MediaQualityService$UserState;)Lcom/android/server/media/quality/MediaQualityService$ActiveProcessingPictureCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 271
    monitor-exit v3

    return-void

    :goto_7
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final isPackageDefaultPictureProfile(Landroid/media/quality/PictureProfile;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 2159
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getProfileType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 2160
    invoke-virtual {p1}, Landroid/media/quality/PictureProfile;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "default"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .locals 7

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/tv/mediaquality/IMediaQuality;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 178
    const-string p0, "MediaQualityService"

    const-string v0, "Binder is null"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 181
    :cond_0
    const-string v1, "MediaQualityService"

    const-string v2, "Binder is not null"

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v1, Lcom/android/server/media/quality/MediaQualityService$1;

    invoke-direct {v1, p0}, Lcom/android/server/media/quality/MediaQualityService$1;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    iput-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mSurfaceControlActivePictureListener:Landroid/view/SurfaceControlActivePictureListener;

    .line 189
    invoke-virtual {v1}, Landroid/view/SurfaceControlActivePictureListener;->startListening()V

    .line 191
    invoke-static {v0}, Landroid/hardware/tv/mediaquality/IMediaQuality$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/mediaquality/IMediaQuality;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    if-eqz v0, :cond_2

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mHalAmbientBacklightCallback:Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;

    invoke-interface {v0, v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setAmbientBacklightCallback(Landroid/hardware/tv/mediaquality/IMediaQualityCallback;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    invoke-interface {v0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getPictureProfileListener()Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPpChangedListener:Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;

    .line 197
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    invoke-interface {v0}, Landroid/hardware/tv/mediaquality/IMediaQuality;->getSoundProfileListener()Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mSpChangedListener:Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;

    .line 199
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileAdjListener:Lcom/android/server/media/quality/MediaQualityService$PictureProfileAdjustmentListenerImpl;

    invoke-interface {v0, v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setPictureProfileAdjustmentListener(Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;)V

    .line 200
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQuality:Landroid/hardware/tv/mediaquality/IMediaQuality;

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileAdjListener:Lcom/android/server/media/quality/MediaQualityService$SoundProfileAdjustmentListenerImpl;

    invoke-interface {v0, v1}, Landroid/hardware/tv/mediaquality/IMediaQuality;->setSoundProfileAdjustmentListener(Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;)V

    .line 202
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :try_start_1
    const-string v1, "_type = ? AND _name = ?"

    const/4 v2, 0x1

    .line 206
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 209
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    const/4 v4, 0x0

    .line 211
    invoke-static {v4}, Lcom/android/server/media/quality/MediaQualityUtils;->getMediaProfileColumns(Z)[Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-static {v3, v4, v1, v2}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfilesBasedOnConditions(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 212
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService;->mPackageDefaultPictureProfileHandleMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 213
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/quality/PictureProfile;

    .line 214
    iget-object v3, p0, Lcom/android/server/media/quality/MediaQualityService;->mPackageDefaultPictureProfileHandleMap:Ljava/util/Map;

    .line 215
    invoke-virtual {v2}, Landroid/media/quality/PictureProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/media/quality/PictureProfile;->getHandle()Landroid/media/quality/PictureProfileHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/quality/PictureProfileHandle;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 214
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 217
    :cond_1
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 219
    const-string v1, "MediaQualityService"

    const-string v2, "Failed to set ambient backlight detector callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    :cond_2
    :goto_2
    const-string/jumbo v0, "media_quality"

    new-instance v1, Lcom/android/server/media/quality/MediaQualityService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/media/quality/MediaQualityService$BinderService;-><init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final setVendorPictureParameters(Landroid/hardware/tv/mediaquality/PictureParameters;Landroid/os/Parcel;Landroid/os/PersistableBundle;)V
    .locals 0

    const/4 p0, 0x0

    .line 2138
    invoke-virtual {p3, p2, p0}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2139
    invoke-virtual {p2}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 2140
    new-instance p2, Landroid/hardware/audio/effect/DefaultExtension;

    invoke-direct {p2}, Landroid/hardware/audio/effect/DefaultExtension;-><init>()V

    .line 2141
    array-length p3, p0

    invoke-static {p0, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    iput-object p0, p2, Landroid/hardware/audio/effect/DefaultExtension;->bytes:[B

    .line 2143
    iget-object p0, p1, Landroid/hardware/tv/mediaquality/PictureParameters;->vendorPictureParameters:Landroid/os/ParcelableHolder;

    invoke-virtual {p0, p2}, Landroid/os/ParcelableHolder;->setParcelable(Landroid/os/Parcelable;)V

    return-void
.end method

.method public final setVendorSoundParameters(Landroid/hardware/tv/mediaquality/SoundParameters;Landroid/os/Parcel;Landroid/os/PersistableBundle;)V
    .locals 0

    const/4 p0, 0x0

    .line 2150
    invoke-virtual {p3, p2, p0}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2151
    invoke-virtual {p2}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    .line 2152
    new-instance p2, Landroid/hardware/audio/effect/DefaultExtension;

    invoke-direct {p2}, Landroid/hardware/audio/effect/DefaultExtension;-><init>()V

    .line 2153
    array-length p3, p0

    invoke-static {p0, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    iput-object p0, p2, Landroid/hardware/audio/effect/DefaultExtension;->bytes:[B

    .line 2155
    iget-object p0, p1, Landroid/hardware/tv/mediaquality/SoundParameters;->vendorSoundParameters:Landroid/os/ParcelableHolder;

    invoke-virtual {p0, p2}, Landroid/os/ParcelableHolder;->setParcelable(Landroid/os/Parcelable;)V

    return-void
.end method

.method public updateDatabaseOnPictureProfileAndNotifyManagerAndHal(Landroid/content/ContentValues;Landroid/os/PersistableBundle;)V
    .locals 5

    .line 1260
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1261
    const-string/jumbo v1, "picture_quality"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1263
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    .line 1264
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mPictureProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-virtual {v1, p1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    .line 1265
    invoke-static {v2, p1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetPictureProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/PictureProfile;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1266
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1264
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnPictureProfileUpdated(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/PictureProfile;II)V

    .line 1267
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mHalNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnPictureProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public updateDatabaseOnSoundProfileAndNotifyManagerAndHal(Landroid/content/ContentValues;Landroid/os/PersistableBundle;)V
    .locals 5

    .line 1283
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMediaQualityDbHelper:Lcom/android/server/media/quality/MediaQualityDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1284
    const-string/jumbo v1, "sound_quality"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1286
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    .line 1287
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqManagerNotifier:Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;

    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService;->mSoundProfileTempIdMap:Lcom/android/server/media/quality/BiMap;

    invoke-virtual {v1, p1}, Lcom/android/server/media/quality/BiMap;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService;->mMqDatabaseUtils:Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;

    .line 1288
    invoke-static {v2, p1}, Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;->-$$Nest$mgetSoundProfile(Lcom/android/server/media/quality/MediaQualityService$MqDatabaseUtils;Ljava/lang/Long;)Landroid/media/quality/SoundProfile;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1289
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1287
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;->-$$Nest$mnotifyOnSoundProfileUpdated(Lcom/android/server/media/quality/MediaQualityService$MqManagerNotifier;Ljava/lang/String;Landroid/media/quality/SoundProfile;II)V

    .line 1290
    iget-object p0, p0, Lcom/android/server/media/quality/MediaQualityService;->mHalNotifier:Lcom/android/server/media/quality/MediaQualityService$HalNotifier;

    invoke-static {p0, p1, p2}, Lcom/android/server/media/quality/MediaQualityService$HalNotifier;->-$$Nest$mnotifyHalOnSoundProfileChange(Lcom/android/server/media/quality/MediaQualityService$HalNotifier;Ljava/lang/Long;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public updatePictureProfileFromHal(Ljava/lang/Long;Landroid/os/PersistableBundle;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v5, p2

    .line 1248
    invoke-static/range {v0 .. v5}, Lcom/android/server/media/quality/MediaQualityUtils;->getContentValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/ContentValues;

    move-result-object p1

    .line 1255
    invoke-virtual {p0, p1, v5}, Lcom/android/server/media/quality/MediaQualityService;->updateDatabaseOnPictureProfileAndNotifyManagerAndHal(Landroid/content/ContentValues;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public updateSoundProfileFromHal(Ljava/lang/Long;Landroid/os/PersistableBundle;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v5, p2

    .line 1271
    invoke-static/range {v0 .. v5}, Lcom/android/server/media/quality/MediaQualityUtils;->getContentValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/ContentValues;

    move-result-object p1

    .line 1278
    invoke-virtual {p0, p1, v5}, Lcom/android/server/media/quality/MediaQualityService;->updateDatabaseOnSoundProfileAndNotifyManagerAndHal(Landroid/content/ContentValues;Landroid/os/PersistableBundle;)V

    return-void
.end method
