.class public Lcom/android/server/am/ActivityManagerService$8;
.super Lcom/android/server/am/ActivityManagerService$ImportanceToken;
.source "ActivityManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    .line 5979
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService$ImportanceToken;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 5982
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$8;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->importanceTokenDied(Lcom/android/server/am/ActivityManagerService$ImportanceToken;)V

    return-void
.end method
