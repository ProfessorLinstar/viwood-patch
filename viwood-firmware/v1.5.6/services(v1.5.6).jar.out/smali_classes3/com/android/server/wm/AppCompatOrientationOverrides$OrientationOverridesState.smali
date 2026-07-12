.class public Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;
.super Ljava/lang/Object;
.source "AppCompatOrientationOverrides.java"


# static fields
.field static final MIN_COUNT_TO_IGNORE_REQUEST_IN_LOOP:I = 0x2

.field static final SET_ORIENTATION_REQUEST_COUNTER_TIMEOUT_MS:I = 0x3e8


# instance fields
.field mCurrentTimeMillisSupplier:Ljava/util/function/LongSupplier;

.field public final mIsOverrideAnyOrientationEnabled:Z

.field public final mIsOverrideToNosensorOrientationEnabled:Z

.field public final mIsOverrideToPortraitOrientationEnabled:Z

.field public final mIsOverrideToReverseLandscapeOrientationEnabled:Z

.field public mIsRelaunchingAfterRequestedOrientationChanged:Z

.field public mSetOrientationRequestCounter:I

.field public mTimeMsLastSetOrientationRequest:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsRelaunchingAfterRequestedOrientationChanged(Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsRelaunchingAfterRequestedOrientationChanged:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSetOrientationRequestCounter(Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsRelaunchingAfterRequestedOrientationChanged(Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsRelaunchingAfterRequestedOrientationChanged:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/LongSupplier;)V
    .locals 2

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 218
    iput-wide v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mTimeMsLastSetOrientationRequest:J

    const/4 v0, 0x0

    .line 220
    iput v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    .line 226
    iput-object p2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mCurrentTimeMillisSupplier:Ljava/util/function/LongSupplier;

    .line 227
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const-wide/32 v0, 0xfd27655

    .line 228
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideToNosensorOrientationEnabled:Z

    .line 229
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const-wide/32 v0, 0xfd27b38

    .line 230
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideToPortraitOrientationEnabled:Z

    .line 231
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const-wide/32 v0, 0xfd2aa87

    .line 232
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideAnyOrientationEnabled:Z

    .line 233
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const-wide/32 v0, 0xfdcbe7f

    .line 234
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsOverrideToReverseLandscapeOrientationEnabled:Z

    return-void
.end method


# virtual methods
.method public shouldIgnoreRequestInLoop()Z
    .locals 1

    .line 242
    iget p0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateOrientationRequestLoopState()V
    .locals 6

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mCurrentTimeMillisSupplier:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    .line 250
    iget-wide v2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mTimeMsLastSetOrientationRequest:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 252
    iget v2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 254
    iput v2, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mSetOrientationRequestCounter:I

    .line 256
    :goto_0
    iput-wide v0, p0, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mTimeMsLastSetOrientationRequest:J

    return-void
.end method
