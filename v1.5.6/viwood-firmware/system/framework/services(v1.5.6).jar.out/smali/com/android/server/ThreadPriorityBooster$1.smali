.class public Lcom/android/server/ThreadPriorityBooster$1;
.super Ljava/lang/ThreadLocal;
.source "ThreadPriorityBooster.java"


# direct methods
.method public constructor <init>(Lcom/android/server/ThreadPriorityBooster;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Lcom/android/server/ThreadPriorityBooster$PriorityState;
    .locals 1

    .line 36
    new-instance p0, Lcom/android/server/ThreadPriorityBooster$PriorityState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ThreadPriorityBooster$PriorityState;-><init>(Lcom/android/server/ThreadPriorityBooster-IA;)V

    return-object p0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/server/ThreadPriorityBooster$1;->initialValue()Lcom/android/server/ThreadPriorityBooster$PriorityState;

    move-result-object p0

    return-object p0
.end method
