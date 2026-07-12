.class public Lcom/android/server/incident/RequestQueue$Rec;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# instance fields
.field public final key:Landroid/os/IBinder;

.field public final runnable:Ljava/lang/Runnable;

.field public final value:Z


# direct methods
.method public constructor <init>(Lcom/android/server/incident/RequestQueue;Landroid/os/IBinder;ZLjava/lang/Runnable;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/android/server/incident/RequestQueue$Rec;->key:Landroid/os/IBinder;

    .line 73
    iput-boolean p3, p0, Lcom/android/server/incident/RequestQueue$Rec;->value:Z

    .line 74
    iput-object p4, p0, Lcom/android/server/incident/RequestQueue$Rec;->runnable:Ljava/lang/Runnable;

    return-void
.end method
