.class Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;
.super Lcom/android/server/display/BrightnessMappingStrategy;
.source "BrightnessMappingStrategy.java"


# static fields
.field public static final FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field public mAdjustedNitsToBrightnessSpline:Landroid/util/Spline;

.field public mAutoBrightnessAdjustment:F

.field public final mBrightness:[F

.field public mBrightnessRangeAdjustmentApplied:Z

.field public mBrightnessSpline:Landroid/util/Spline;

.field public mBrightnessSplineChangeTimes:Landroid/util/LongArray;

.field public mBrightnessToAdjustedNitsSpline:Landroid/util/Spline;

.field public mBrightnessToNitsSpline:Landroid/util/Spline;

.field public mConfig:Landroid/hardware/display/BrightnessConfiguration;

.field public final mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

.field public final mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

.field public final mMaxGamma:F

.field public final mMode:I

.field public final mNits:[F

.field public mNitsToBrightnessSpline:Landroid/util/Spline;

.field public final mPreset:I

.field public mPreviousBrightnessSplines:Ljava/util/List;

.field public mUserBrightness:F

.field public mUserLux:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 863
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/BrightnessConfiguration;[F[FFIILcom/android/server/display/whitebalance/DisplayWhiteBalanceController;)V
    .locals 4

    .line 868
    invoke-direct {p0}, Lcom/android/server/display/BrightnessMappingStrategy;-><init>()V

    .line 860
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mPreviousBrightnessSplines:Ljava/util/List;

    .line 861
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSplineChangeTimes:Landroid/util/LongArray;

    .line 870
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v0, p3

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Nits and brightness arrays must not be empty!"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 873
    array-length v0, p2

    array-length v3, p3

    if-ne v0, v3, :cond_1

    move v1, v2

    :cond_1
    const-string v0, "Nits and brightness arrays must be the same length!"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 875
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 876
    const-string/jumbo v1, "nits"

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 877
    const-string v1, "brightness"

    invoke-static {p3, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    .line 880
    iput p5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMode:I

    .line 881
    iput p6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mPreset:I

    .line 882
    iput p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    .line 883
    iput v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    const/high16 p4, -0x40800000    # -1.0f

    .line 884
    iput p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 p4, 0x7fc00000    # Float.NaN

    .line 885
    iput p4, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 886
    iput-object p7, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 888
    iput-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNits:[F

    .line 889
    iput-object p3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightness:[F

    .line 890
    invoke-virtual {p0, p2}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeNitsBrightnessSplines([F)V

    .line 891
    iget-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    iput-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAdjustedNitsToBrightnessSpline:Landroid/util/Spline;

    .line 892
    iget-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    iput-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToAdjustedNitsSpline:Landroid/util/Spline;

    .line 894
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 895
    iget-boolean p2, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p2, :cond_2

    .line 896
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object p2

    const-string/jumbo p3, "physical mapping strategy"

    invoke-virtual {p2, p3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 898
    :cond_2
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 899
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    return-void
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .locals 4

    .line 991
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getUnadjustedBrightness(F)F

    move-result v0

    .line 992
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    const-string v2, "BrightnessMappingStrategy"

    if-eqz v1, :cond_0

    .line 993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUserDataPoint: ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string v3, "add user data point"

    invoke-virtual {v1, v3}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string/jumbo v3, "user data point"

    .line 995
    invoke-virtual {v1, v3, p1, p2}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    move-result-object v1

    const-string v3, "current brightness"

    .line 996
    invoke-virtual {v1, v3, p1, v0}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    .line 998
    :cond_0
    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->inferAutoBrightnessAdjustment(FFF)F

    move-result v0

    .line 1001
    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v1, :cond_1

    .line 1002
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUserDataPoint: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_1
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1006
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    .line 1007
    iput p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 1008
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    .line 1010
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mPreviousBrightnessSplines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    .line 1011
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mPreviousBrightnessSplines:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1012
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSplineChangeTimes:Landroid/util/LongArray;

    invoke-virtual {p1, p2}, Landroid/util/LongArray;->remove(I)V

    .line 1014
    :cond_2
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mPreviousBrightnessSplines:Ljava/util/List;

    iget-object p2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1015
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSplineChangeTimes:Landroid/util/LongArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/LongArray;->add(J)V

    return-void
.end method

.method public clearUserDataPoints()V
    .locals 5

    .line 1020
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1021
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUserDataPoints: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " => 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BrightnessMappingStrategy"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v2, "clear user data points"

    invoke-virtual {v0, v2}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    iget v3, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 1024
    const-string/jumbo v4, "user data point"

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    :cond_0
    const/4 v0, 0x0

    .line 1026
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 1027
    iput v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1028
    iput v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    :cond_1
    return-void
.end method

.method public final computeNitsBrightnessSplines([F)V
    .locals 1

    .line 1224
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightness:[F

    invoke-static {p1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    .line 1225
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightness:[F

    invoke-static {v0, p1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    return-void
.end method

.method public final computeSpline()V
    .locals 10

    .line 1229
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 1230
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, [F

    .line 1231
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    .line 1232
    array-length v1, v0

    new-array v4, v1, [F

    const/4 v9, 0x0

    move v2, v9

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1234
    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAdjustedNitsToBrightnessSpline:Landroid/util/Spline;

    aget v6, v0, v2

    invoke-virtual {v5, v6}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1236
    :cond_0
    iget v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    iget v6, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    iget v7, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    iget v8, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/display/BrightnessMappingStrategy;->getAdjustedCurve([F[FFFFF)Landroid/util/Pair;

    move-result-object p0

    .line 1238
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [F

    .line 1239
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, [F

    .line 1240
    array-length v1, p0

    new-array v3, v1, [F

    :goto_1
    if-ge v9, v1, :cond_1

    .line 1242
    iget-object v4, v2, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToAdjustedNitsSpline:Landroid/util/Spline;

    aget v5, p0, v9

    invoke-virtual {v4, v5}, Landroid/util/Spline;->interpolate(F)F

    move-result v4

    aput v4, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1244
    :cond_1
    invoke-static {v0, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p0

    iput-object p0, v2, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    return-void
.end method

.method public convertToAdjustedNits(F)F
    .locals 0

    .line 981
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToAdjustedNitsSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public convertToNits(F)F
    .locals 0

    .line 976
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public final correctBrightness(FLjava/lang/String;I)F
    .locals 1

    if-eqz p2, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, p2}, Landroid/hardware/display/BrightnessConfiguration;->getCorrectionByPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1257
    invoke-virtual {p2, p1}, Landroid/hardware/display/BrightnessCorrection;->apply(F)F

    move-result p0

    return p0

    :cond_0
    const/4 p2, -0x1

    if-eq p3, p2, :cond_1

    .line 1261
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p0, p3}, Landroid/hardware/display/BrightnessConfiguration;->getCorrectionByCategory(I)Landroid/hardware/display/BrightnessCorrection;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1263
    invoke-virtual {p0, p1}, Landroid/hardware/display/BrightnessCorrection;->apply(F)F

    move-result p0

    return p0

    :cond_1
    return p1
.end method

.method public dump(Ljava/io/PrintWriter;F)V
    .locals 7

    .line 1062
    const-string v0, "PhysicalMappingStrategy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNitsToBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessToNitsSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjustedNitsToBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAdjustedNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjustedBrightnessToNitsSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToAdjustedNitsSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMaxGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUserBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDefaultConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessRangeAdjustmentApplied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessRangeAdjustmentApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  shortTermModelTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->getShortTermModelTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mPreviousBrightnessSplines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    const-string v0, "  Previous short-term models (oldest to newest): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1080
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mPreviousBrightnessSplines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Computed at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    iget-object v5, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSplineChangeTimes:Landroid/util/LongArray;

    .line 1082
    invoke-virtual {v5, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1081
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    iget-object v2, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mPreviousBrightnessSplines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Spline;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->dumpConfigDiff(Ljava/io/PrintWriter;FLandroid/util/Spline;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1087
    :cond_1
    const-string v1, "  Difference between current config and default: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1088
    iget-object v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->dumpConfigDiff(Ljava/io/PrintWriter;FLandroid/util/Spline;Z)V

    return-void
.end method

.method public final dumpConfigDiff(Ljava/io/PrintWriter;FLandroid/util/Spline;Z)V
    .locals 29

    move-object/from16 v0, p0

    .line 1119
    iget-object v2, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v2}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v2

    .line 1120
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [F

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [F

    invoke-static {v3, v4}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 1122
    iget-object v4, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v4}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v4

    .line 1123
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [F

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [F

    invoke-static {v5, v4}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v4

    .line 1126
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, [F

    .line 1127
    iget v6, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    const/4 v7, 0x1

    if-ltz v6, :cond_0

    .line 1128
    move-object v5, v2

    check-cast v5, [F

    check-cast v2, [F

    array-length v2, v2

    add-int/2addr v2, v7

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v5

    .line 1129
    array-length v2, v5

    sub-int/2addr v2, v7

    iget v6, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    aput v6, v5, v2

    .line 1130
    invoke-static {v5}, Ljava/util/Arrays;->sort([F)V

    .line 1142
    :cond_0
    const-string v6, ""

    const/4 v8, 0x0

    move-object v2, v6

    move/from16 v16, v7

    move/from16 v17, v16

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    const/4 v15, 0x0

    :goto_0
    array-length v7, v5

    if-ge v15, v7, :cond_7

    .line 1143
    aget v7, v5, v15

    if-eqz v16, :cond_1

    .line 1145
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "            lux: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1146
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "        default: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1147
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "      long-term: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1148
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "        current: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1149
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "    current(bl): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1150
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "     current(%): "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1151
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v16, v8

    const-string v8, "  current(hbm%): "

    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, v16

    const/16 v16, 0x0

    :cond_1
    move-object/from16 v18, v6

    .line 1155
    invoke-virtual {v4, v7}, Landroid/util/Spline;->interpolate(F)F

    move-result v6

    move-object/from16 v19, v4

    .line 1156
    invoke-virtual {v3, v7}, Landroid/util/Spline;->interpolate(F)F

    move-result v4

    move-object/from16 v20, v3

    move-object/from16 v3, p3

    .line 1157
    invoke-virtual {v3, v7}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 1158
    iget-object v3, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAdjustedNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v3, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    move/from16 v21, v15

    .line 1160
    iget v15, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    cmpl-float v15, v7, v15

    if-nez v15, :cond_2

    const-string v15, "^"

    :goto_1
    move-object/from16 v22, v5

    goto :goto_2

    :cond_2
    move-object/from16 v15, v18

    goto :goto_1

    .line 1161
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->toStrFloatForDump(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1162
    invoke-virtual {v0, v6}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->toStrFloatForDump(F)Ljava/lang/String;

    move-result-object v6

    .line 1163
    invoke-virtual {v0, v4}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->toStrFloatForDump(F)Ljava/lang/String;

    move-result-object v4

    .line 1164
    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->toStrFloatForDump(F)Ljava/lang/String;

    move-result-object v1

    .line 1165
    invoke-virtual {v0, v3}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->toStrFloatForDump(F)Ljava/lang/String;

    move-result-object v7

    div-float v15, v3, p2

    .line 1167
    invoke-static {v15}, Lcom/android/internal/display/BrightnessUtils;->convertLinearToGamma(F)F

    move-result v15

    const/high16 v23, 0x42c80000    # 100.0f

    mul-float v15, v15, v23

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 1166
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 1170
    invoke-static {v3}, Lcom/android/internal/display/BrightnessUtils;->convertLinearToGamma(F)F

    move-result v3

    mul-float v3, v3, v23

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1169
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1172
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    move-object/from16 v23, v1

    .line 1173
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v24, v3

    .line 1174
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v25, v4

    .line 1175
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v26, v5

    .line 1176
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v27, v6

    .line 1177
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v28, v7

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1176
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1175
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1174
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1173
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1172
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1181
    filled-new-array/range {v26 .. v26}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    filled-new-array/range {v27 .. v27}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    filled-new-array/range {v25 .. v25}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    filled-new-array/range {v23 .. v23}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    filled-new-array/range {v28 .. v28}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    filled-new-array/range {v24 .. v24}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_4

    move-object/from16 v5, v22

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    move/from16 v2, v21

    if-ne v2, v0, :cond_3

    :goto_3
    move-object/from16 v1, p1

    goto :goto_4

    :cond_3
    const-string v0, ", "

    move-object/from16 v1, p1

    move-object v3, v0

    move-object/from16 v0, v18

    goto :goto_5

    :cond_4
    move/from16 v2, v21

    move-object/from16 v5, v22

    goto :goto_3

    .line 1191
    :goto_4
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-nez p4, :cond_5

    .line 1193
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1194
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1196
    :cond_5
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1197
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1198
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_6

    .line 1200
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    move-object/from16 v0, v18

    .line 1202
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v3, v0

    move/from16 v16, v17

    :goto_5
    add-int/lit8 v15, v2, 0x1

    move-object v6, v0

    move-object v2, v3

    move-object/from16 v4, v19

    move-object/from16 v3, v20

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .locals 0

    .line 955
    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    return p0
.end method

.method public getBrightness(FLjava/lang/String;I)F
    .locals 2

    .line 935
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    .line 938
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_0

    .line 939
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->calculateAdjustedBrightnessNits(F)F

    move-result p1

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAdjustedNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    .line 945
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 946
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->correctBrightness(FLjava/lang/String;I)F

    move-result p0

    return p0

    .line 947
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz p0, :cond_2

    .line 948
    const-string p0, "BrightnessMappingStrategy"

    const-string/jumbo p2, "user point set, correction not applied"

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p1
.end method

.method public getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 0

    .line 929
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    return-object p0
.end method

.method public getBrightnessFromNits(F)F
    .locals 0

    .line 986
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .locals 0

    .line 1045
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    return-object p0
.end method

.method public getMode()I
    .locals 0

    .line 1093
    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mMode:I

    return p0
.end method

.method public getPreset()I
    .locals 0

    .line 1098
    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mPreset:I

    return p0
.end method

.method public getShortTermModelTimeout()J
    .locals 4

    .line 904
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelTimeoutMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 905
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelTimeoutMillis()J

    move-result-wide v0

    return-wide v0

    .line 907
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p0}, Landroid/hardware/display/BrightnessConfiguration;->getShortTermModelTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getUnadjustedBrightness(F)F
    .locals 2

    .line 1248
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    .line 1249
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [F

    invoke-static {v1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    .line 1250
    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAdjustedNitsToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public getUserBrightness()F
    .locals 0

    .line 1108
    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserBrightness:F

    return p0
.end method

.method public getUserLux()F
    .locals 0

    .line 1103
    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    return p0
.end method

.method public hasUserDataPoints()Z
    .locals 1

    .line 1035
    iget p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mUserLux:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDefaultConfig()Z
    .locals 1

    .line 1040
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    iget-object p0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0, p0}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public recalculateSplines(Z[F)V
    .locals 0

    .line 1050
    iput-boolean p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessRangeAdjustmentApplied:Z

    if-eqz p1, :cond_0

    .line 1052
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightness:[F

    invoke-static {p2, p1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAdjustedNitsToBrightnessSpline:Landroid/util/Spline;

    .line 1053
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightness:[F

    invoke-static {p1, p2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToAdjustedNitsSpline:Landroid/util/Spline;

    return-void

    .line 1055
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mNitsToBrightnessSpline:Landroid/util/Spline;

    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAdjustedNitsToBrightnessSpline:Landroid/util/Spline;

    .line 1056
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToNitsSpline:Landroid/util/Spline;

    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mBrightnessToAdjustedNitsSpline:Landroid/util/Spline;

    return-void
.end method

.method public setAutoBrightnessAdjustment(F)Z
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 960
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 961
    iget v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 964
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoBrightnessAdjustment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessMappingStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "auto-brightness adjustment"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 969
    :cond_1
    iput p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mAutoBrightnessAdjustment:F

    .line 970
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    const/4 p0, 0x1

    return p0
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 914
    iget-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mDefaultConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {p1, v0}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 919
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessMappingStrategy;->mLoggingEnabled:Z

    if-eqz v0, :cond_2

    .line 920
    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->-$$Nest$sfgetPLOG()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v1, "brightness configuration"

    invoke-virtual {v0, v1}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    .line 922
    :cond_2
    iput-object p1, p0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->mConfig:Landroid/hardware/display/BrightnessConfiguration;

    .line 923
    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->computeSpline()V

    const/4 p0, 0x1

    return p0
.end method

.method public final toStrFloatForDump(F)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_0

    .line 1211
    const-string p0, "0"

    return-object p0

    :cond_0
    const p0, 0x3dcccccd    # 0.1f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    .line 1213
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%.3f"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    .line 1215
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%.2f"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/high16 p0, 0x41200000    # 10.0f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_3

    .line 1217
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%.1f"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1219
    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
