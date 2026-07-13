.class public Lcom/android/server/print/RemotePrintService$2;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/print/RemotePrintService;

.field public final synthetic val$printJob:Landroid/print/PrintJobInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$2;->this$0:Lcom/android/server/print/RemotePrintService;

    iput-object p2, p0, Lcom/android/server/print/RemotePrintService$2;->val$printJob:Landroid/print/PrintJobInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$2;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$2;->val$printJob:Landroid/print/PrintJobInfo;

    invoke-static {v0, p0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$mhandleRequestCancelPrintJob(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    return-void
.end method
