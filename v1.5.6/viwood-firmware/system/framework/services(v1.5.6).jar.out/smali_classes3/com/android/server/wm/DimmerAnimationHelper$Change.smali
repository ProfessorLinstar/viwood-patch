.class public Lcom/android/server/wm/DimmerAnimationHelper$Change;
.super Ljava/lang/Object;
.source "DimmerAnimationHelper.java"


# instance fields
.field public mAlpha:F

.field public mBlurRadius:I

.field public mDimmingContainer:Lcom/android/server/wm/WindowState;

.field public mGeometryParent:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowState;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGeometryParent(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Lcom/android/server/wm/WindowContainer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mGeometryParent:Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAlpha(Lcom/android/server/wm/DimmerAnimationHelper$Change;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmBlurRadius(Lcom/android/server/wm/DimmerAnimationHelper$Change;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmGeometryParent(Lcom/android/server/wm/DimmerAnimationHelper$Change;Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mGeometryParent:Lcom/android/server/wm/WindowContainer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 51
    iput v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    .line 54
    iput-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mGeometryParent:Lcom/android/server/wm/WindowContainer;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DimmerAnimationHelper$Change;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 51
    iput v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    .line 54
    iput-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mGeometryParent:Lcom/android/server/wm/WindowContainer;

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DimmerAnimationHelper$Change;->copyFrom(Lcom/android/server/wm/DimmerAnimationHelper$Change;)V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/wm/DimmerAnimationHelper$Change;)V
    .locals 1

    .line 64
    iget v0, p1, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    iput v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    .line 65
    iget v0, p1, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    iput v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    .line 66
    iget-object v0, p1, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    .line 67
    iget-object p1, p1, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mGeometryParent:Lcom/android/server/wm/WindowContainer;

    iput-object p1, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mGeometryParent:Lcom/android/server/wm/WindowContainer;

    return-void
.end method

.method public hasSameDimmingContainer(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Z
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasSameVisualProperties(Lcom/android/server/wm/DimmerAnimationHelper$Change;)Z
    .locals 2

    .line 72
    iget v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    iget v1, p1, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget p0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    iget p1, p1, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public inheritPropertiesFromAnimation(Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 81
    iget v0, p1, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentAlpha:F

    iput v0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    .line 82
    iget p1, p1, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentBlur:I

    iput p1, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dim state: alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", blur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", geometryParent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mGeometryParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
