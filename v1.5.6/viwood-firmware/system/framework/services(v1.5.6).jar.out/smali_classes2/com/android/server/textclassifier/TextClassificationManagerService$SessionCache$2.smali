.class public Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;
.super Landroid/util/LruCache;
.source "TextClassificationManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;


# direct methods
.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;I)V
    .locals 0

    .line 697
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public entryRemoved(ZLandroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 705
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    invoke-static {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->-$$Nest$fgetmDeathRecipient(Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 697
    check-cast p2, Landroid/os/IBinder;

    check-cast p3, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;

    check-cast p4, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;->entryRemoved(ZLandroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;)V

    return-void
.end method
