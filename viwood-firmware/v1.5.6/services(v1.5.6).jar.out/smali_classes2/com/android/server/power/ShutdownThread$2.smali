.class public Lcom/android/server/power/ShutdownThread$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 470
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$smwaitRefreshFinish()Z

    .line 471
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->-$$Nest$smbeginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method
