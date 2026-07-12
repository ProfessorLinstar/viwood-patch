.class public Lcom/android/server/wm/AppCompatController;
.super Ljava/lang/Object;
.source "AppCompatController.java"


# instance fields
.field public final mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

.field public final mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

.field public final mDesktopAspectRatioPolicy:Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

.field public final mDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

.field public final mDisplayCompatModePolicy:Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

.field public final mLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

.field public final mOrientationPolicy:Lcom/android/server/wm/AppCompatOrientationPolicy;

.field public final mReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

.field public final mSafeRegionPolicy:Lcom/android/server/wm/AppCompatSafeRegionPolicy;

.field public final mSandboxingPolicy:Lcom/android/server/wm/AppCompatSandboxingPolicy;

.field public final mSizeCompatModePolicy:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

.field public final mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .locals 7

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 57
    new-instance v5, Lcom/android/server/wm/utils/OptPropFactory;

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v1, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-direct {v5, v3, v0, v1}, Lcom/android/server/wm/utils/OptPropFactory;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    .line 59
    new-instance v6, Lcom/android/server/wm/AppCompatDeviceStateQuery;

    invoke-direct {v6, p2}, Lcom/android/server/wm/AppCompatDeviceStateQuery;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v6, p0, Lcom/android/server/wm/AppCompatController;->mDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 60
    new-instance v0, Lcom/android/server/wm/TransparentPolicy;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-direct {v0, p2, v1}, Lcom/android/server/wm/TransparentPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 62
    new-instance v1, Lcom/android/server/wm/AppCompatOverrides;

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppCompatOverrides;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/PackageManager;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;Lcom/android/server/wm/AppCompatDeviceStateQuery;)V

    iput-object v1, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 64
    new-instance p2, Lcom/android/server/wm/AppCompatOrientationPolicy;

    invoke-direct {p2, v2, v1}, Lcom/android/server/wm/AppCompatOrientationPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mOrientationPolicy:Lcom/android/server/wm/AppCompatOrientationPolicy;

    .line 65
    new-instance p2, Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    invoke-direct {p2, v2, v0, v1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TransparentPolicy;Lcom/android/server/wm/AppCompatOverrides;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    .line 67
    new-instance p2, Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    invoke-direct {p2, v2, v3}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/PackageManager;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mSafeRegionPolicy:Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    .line 68
    new-instance p2, Lcom/android/server/wm/AppCompatReachabilityPolicy;

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-direct {p2, v2, v3}, Lcom/android/server/wm/AppCompatReachabilityPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    .line 70
    new-instance p2, Lcom/android/server/wm/AppCompatLetterboxPolicy;

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-direct {p2, v2, v3}, Lcom/android/server/wm/AppCompatLetterboxPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 72
    new-instance p2, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-direct {p2, v2, v1, v0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;Lcom/android/server/wm/TransparentPolicy;Lcom/android/server/wm/AppCompatConfiguration;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatController;->mDesktopAspectRatioPolicy:Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    .line 74
    new-instance p1, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    invoke-direct {p1, v2, v1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    .line 76
    new-instance p1, Lcom/android/server/wm/AppCompatSandboxingPolicy;

    invoke-direct {p1, v2}, Lcom/android/server/wm/AppCompatSandboxingPolicy;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatController;->mSandboxingPolicy:Lcom/android/server/wm/AppCompatSandboxingPolicy;

    .line 77
    new-instance p1, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

    invoke-direct {p1}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatController;->mDisplayCompatModePolicy:Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TransparentPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSafeRegionPolicy()Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatOverrides;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object p0

    return-object p0
.end method

.method public getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAspectRatioPolicy:Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    return-object p0
.end method

.method public getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatOverrides;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    return-object p0
.end method

.method public getDesktopAspectRatioPolicy()Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mDesktopAspectRatioPolicy:Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    return-object p0
.end method

.method public getDeviceStateQuery()Lcom/android/server/wm/AppCompatDeviceStateQuery;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    return-object p0
.end method

.method public getDisplayCompatModePolicy()Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mDisplayCompatModePolicy:Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

    return-object p0
.end method

.method public getFocusOverrides()Lcom/android/server/wm/AppCompatFocusOverrides;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatOverrides;->getFocusOverrides()Lcom/android/server/wm/AppCompatFocusOverrides;

    move-result-object p0

    return-object p0
.end method

.method public getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatOverrides;->getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object p0

    return-object p0
.end method

.method public getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    return-object p0
.end method

.method public getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatOverrides;->getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;

    move-result-object p0

    return-object p0
.end method

.method public getOrientationPolicy()Lcom/android/server/wm/AppCompatOrientationPolicy;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mOrientationPolicy:Lcom/android/server/wm/AppCompatOrientationPolicy;

    return-object p0
.end method

.method public getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatOverrides;->getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;

    move-result-object p0

    return-object p0
.end method

.method public getReachabilityPolicy()Lcom/android/server/wm/AppCompatReachabilityPolicy;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mReachabilityPolicy:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    return-object p0
.end method

.method public getResizeOverrides()Lcom/android/server/wm/AppCompatResizeOverrides;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatOverrides;->getResizeOverrides()Lcom/android/server/wm/AppCompatResizeOverrides;

    move-result-object p0

    return-object p0
.end method

.method public getSafeRegionPolicy()Lcom/android/server/wm/AppCompatSafeRegionPolicy;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mSafeRegionPolicy:Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    return-object p0
.end method

.method public getSandboxingPolicy()Lcom/android/server/wm/AppCompatSandboxingPolicy;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mSandboxingPolicy:Lcom/android/server/wm/AppCompatSandboxingPolicy;

    return-object p0
.end method

.method public getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    return-object p0
.end method

.method public getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    return-object p0
.end method
