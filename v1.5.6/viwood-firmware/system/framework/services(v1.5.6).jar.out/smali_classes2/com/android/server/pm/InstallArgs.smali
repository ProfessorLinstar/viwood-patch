.class public final Lcom/android/server/pm/InstallArgs;
.super Ljava/lang/Object;
.source "InstallArgs.java"


# instance fields
.field public final mAbiOverride:Ljava/lang/String;

.field public final mAllowlistedRestrictedPermissions:Ljava/util/List;

.field public final mApplicationEnabledSettingPersistent:Z

.field public final mAutoRevokePermissionsMode:I

.field public mCodeFile:Ljava/io/File;

.field public final mDataLoaderType:I

.field public final mDevelopmentInstallFlags:I

.field public final mDexoptCompilerFilter:Ljava/lang/String;

.field public final mForceQueryableOverride:Z

.field public final mInstallFlags:I

.field public final mInstallReason:I

.field public final mInstallScenario:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public final mInstructionSets:[Ljava/lang/String;

.field public final mMoveInfo:Lcom/android/server/pm/MoveInfo;

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field public final mPackageSource:I

.field public final mPermissionStates:Landroid/util/ArrayMap;

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;

.field public final mTraceCookie:I

.field public final mTraceMethod:Ljava/lang/String;

.field public final mUser:Landroid/os/UserHandle;

.field public final mVolumeUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;IILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIIZLjava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 80
    iput-object p2, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 81
    iput p4, p0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    .line 82
    iput p5, p0, Lcom/android/server/pm/InstallArgs;->mDevelopmentInstallFlags:I

    .line 83
    iput-object p3, p0, Lcom/android/server/pm/InstallArgs;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 84
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallSource;

    iput-object p1, p0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 85
    iput-object p7, p0, Lcom/android/server/pm/InstallArgs;->mVolumeUuid:Ljava/lang/String;

    .line 86
    iput-object p8, p0, Lcom/android/server/pm/InstallArgs;->mUser:Landroid/os/UserHandle;

    .line 87
    iput-object p9, p0, Lcom/android/server/pm/InstallArgs;->mInstructionSets:[Ljava/lang/String;

    .line 88
    iput-object p10, p0, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    .line 89
    iput-object p11, p0, Lcom/android/server/pm/InstallArgs;->mPermissionStates:Landroid/util/ArrayMap;

    .line 90
    iput-object p12, p0, Lcom/android/server/pm/InstallArgs;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    .line 91
    iput p13, p0, Lcom/android/server/pm/InstallArgs;->mAutoRevokePermissionsMode:I

    .line 92
    iput-object p14, p0, Lcom/android/server/pm/InstallArgs;->mTraceMethod:Ljava/lang/String;

    .line 93
    iput p15, p0, Lcom/android/server/pm/InstallArgs;->mTraceCookie:I

    move-object/from16 p1, p16

    .line 94
    iput-object p1, p0, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    move/from16 p1, p17

    .line 95
    iput p1, p0, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    move/from16 p1, p18

    .line 96
    iput p1, p0, Lcom/android/server/pm/InstallArgs;->mInstallScenario:I

    move/from16 p1, p19

    .line 97
    iput-boolean p1, p0, Lcom/android/server/pm/InstallArgs;->mForceQueryableOverride:Z

    move/from16 p1, p20

    .line 98
    iput p1, p0, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    move/from16 p1, p21

    .line 99
    iput p1, p0, Lcom/android/server/pm/InstallArgs;->mPackageSource:I

    move/from16 p1, p22

    .line 100
    iput-boolean p1, p0, Lcom/android/server/pm/InstallArgs;->mApplicationEnabledSettingPersistent:Z

    move-object/from16 p1, p23

    .line 101
    iput-object p1, p0, Lcom/android/server/pm/InstallArgs;->mDexoptCompilerFilter:Ljava/lang/String;

    return-void
.end method
