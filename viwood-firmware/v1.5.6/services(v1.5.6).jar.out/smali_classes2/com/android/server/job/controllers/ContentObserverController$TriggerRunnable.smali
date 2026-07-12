.class public final Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;
.super Ljava/lang/Object;
.source "ContentObserverController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ContentObserverController$JobInstance;)V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;->mInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;->mInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->trigger()V

    return-void
.end method
