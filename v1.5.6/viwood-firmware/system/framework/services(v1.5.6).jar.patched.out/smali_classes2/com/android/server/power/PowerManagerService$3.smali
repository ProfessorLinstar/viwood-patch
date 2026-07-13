.class public Lcom/android/server/power/PowerManagerService$3;
.super Ljava/lang/Thread;
.source "PowerManagerService.java"


# instance fields
.field public final synthetic val$message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4366
    iput-object p3, p0, Lcom/android/server/power/PowerManagerService$3;->val$message:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 4369
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$3;->val$message:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
