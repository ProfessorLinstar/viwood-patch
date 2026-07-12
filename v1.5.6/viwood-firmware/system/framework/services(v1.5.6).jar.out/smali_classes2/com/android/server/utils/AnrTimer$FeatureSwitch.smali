.class public abstract Lcom/android/server/utils/AnrTimer$FeatureSwitch;
.super Ljava/lang/Object;
.source "AnrTimer.java"


# direct methods
.method public constructor <init>(Lcom/android/server/utils/AnrTimer;)V
    .locals 0

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/utils/AnrTimer;Lcom/android/server/utils/AnrTimer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;-><init>(Lcom/android/server/utils/AnrTimer;)V

    return-void
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$TimerLock;
.end method

.method public abstract cancel(Ljava/lang/Object;)Z
.end method

.method public abstract close()V
.end method

.method public abstract discard(Ljava/lang/Object;)Z
.end method

.method public abstract dump(Landroid/util/IndentingPrintWriter;Z)V
.end method

.method public abstract enabled()Z
.end method

.method public abstract release(Lcom/android/server/utils/AnrTimer$TimerLock;)V
.end method

.method public abstract start(Ljava/lang/Object;IIJ)V
.end method
