.class public Lcom/android/server/utils/AnrTimer$Injector;
.super Ljava/lang/Object;
.source "AnrTimer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public freezerEnabled()Z
    .locals 0

    .line 157
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smfreezerFeatureEnabled()Z

    move-result p0

    return p0
.end method

.method public serviceEnabled()Z
    .locals 0

    .line 153
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smanrTimerServiceEnabled()Z

    move-result p0

    return p0
.end method
