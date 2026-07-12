.class public Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;
.super Ljava/lang/Object;
.source "AppCompatReachabilityOverrides.java"


# instance fields
.field public mIsDoubleTapEvent:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsDoubleTapEvent(Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsDoubleTapEvent(Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatReachabilityOverrides-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;-><init>()V

    return-void
.end method


# virtual methods
.method public isFromDoubleTap()Z
    .locals 2

    .line 326
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    const/4 v1, 0x0

    .line 327
    iput-boolean v1, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsDoubleTapEvent:Z

    return v0
.end method
