.class public Lcom/android/server/SystemServer$1;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Landroid/os/IBinderCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method public constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 0

    .line 1026
    iput-object p1, p0, Lcom/android/server/SystemServer$1;->this$0:Lcom/android/server/SystemServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransactionError(IIII)V
    .locals 0

    .line 1029
    iget-object p0, p0, Lcom/android/server/SystemServer$1;->this$0:Lcom/android/server/SystemServer;

    invoke-static {p0}, Lcom/android/server/SystemServer;->-$$Nest$fgetmActivityManagerService(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->frozenBinderTransactionDetected(IIII)V

    return-void
.end method
