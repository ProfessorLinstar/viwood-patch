.class final Lcom/android/server/pm/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"


# instance fields
.field public final mChangedAbiCodePath:Ljava/util/List;

.field public final mDynamicSharedLibraryInfos:Ljava/util/List;

.field public final mExistingSettingCopied:Z

.field public final mPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final mPreviousAppId:I

.field public final mRequest:Lcom/android/server/pm/ScanRequest;

.field public final mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

.field public final mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ScanRequest;Lcom/android/server/pm/PackageSetting;Ljava/util/List;ZILandroid/content/pm/SharedLibraryInfo;Landroid/content/pm/SharedLibraryInfo;Ljava/util/List;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    .line 71
    iput-object p2, p0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 72
    iput-object p3, p0, Lcom/android/server/pm/ScanResult;->mChangedAbiCodePath:Ljava/util/List;

    .line 73
    iput-boolean p4, p0, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    const/4 p1, -0x1

    .line 76
    iput p1, p0, Lcom/android/server/pm/ScanResult;->mPreviousAppId:I

    .line 77
    iput-object p6, p0, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 78
    iput-object p7, p0, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 79
    iput-object p8, p0, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    return-void
.end method
