.class public Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"


# instance fields
.field public final mBacklight:Lcom/android/server/lights/LogicalLight;

.field public final mDisplayToken:Landroid/os/IBinder;

.field public mForceSurfaceControl:Z

.field public final mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

.field public final mUseSurfaceControlBrightness:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmForceSurfaceControl(Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUseSurfaceControlBrightness(Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    return p0
.end method

.method public constructor <init>(Landroid/os/IBinder;ZLcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;)V
    .locals 1

    .line 1801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1794
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    .line 1802
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    .line 1803
    iput-object p3, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 1806
    invoke-virtual {p3, p1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 1809
    const-class p1, Lcom/android/server/lights/LightsManager;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/lights/LightsManager;

    .line 1810
    invoke-virtual {p1, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1812
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    return-void
.end method


# virtual methods
.method public setBacklight(FFFF)V
    .locals 6

    .line 1818
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1826
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    if-eqz p0, :cond_1

    .line 1827
    invoke-virtual {p0, p3}, Lcom/android/server/lights/LogicalLight;->setBrightness(F)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1819
    invoke-static {p1, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1821
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0, p3}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setDisplayBrightness(Landroid/os/IBinder;F)Z

    return-void

    .line 1823
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    return-void
.end method

.method public setForceSurfaceControl(Z)V
    .locals 0

    .line 1832
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BacklightAdapter [useSurfaceControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " (force_anyway? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), backlight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
