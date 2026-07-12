.class public Lcom/android/server/am/ActivityManagerService$12;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$app:Landroid/os/IBinder;

.field public final synthetic val$callingPid:I

.field public final synthetic val$callingUid:I

.field public final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

.field public final synthetic val$tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;IILandroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V
    .locals 0

    .line 9702
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$12;->val$callingUid:I

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$12;->val$callingPid:I

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$12;->val$app:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$12;->val$tag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$12;->val$crashInfo:Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 9704
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$12;->val$callingUid:I

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$12;->val$callingPid:I

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$12;->val$app:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$12;->val$tag:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$12;->val$crashInfo:Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->handleApplicationWtfInner(IILandroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Lcom/android/server/am/ProcessRecord;

    return-void
.end method
