.class public Lcom/android/server/textclassifier/TextClassificationManagerService$1;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"

# interfaces
.implements Landroid/service/textclassifier/ITextClassifierCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onFailure()V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method
