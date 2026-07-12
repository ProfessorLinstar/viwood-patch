.class public Lcom/android/server/am/ActivityManagerService$4;
.super Lcom/android/internal/app/IAppOpsActiveCallback$Stub;
.source "ActivityManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .line 2070
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsActiveCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opActiveChanged(IILjava/lang/String;Ljava/lang/String;IZII)V
    .locals 0

    .line 2075
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$4;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p2, p6}, Lcom/android/server/am/ActivityManagerService;->cameraActiveChanged(IZ)V

    return-void
.end method
