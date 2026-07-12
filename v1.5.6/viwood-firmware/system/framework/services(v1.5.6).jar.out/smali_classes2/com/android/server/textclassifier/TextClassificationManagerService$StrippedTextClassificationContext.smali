.class public Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"


# instance fields
.field public final useDefaultTextClassifier:Z

.field public final userId:I


# direct methods
.method public constructor <init>(Landroid/view/textclassifier/TextClassificationContext;)V
    .locals 1

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object p1

    .line 772
    invoke-virtual {p1}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;->userId:I

    .line 773
    invoke-virtual {p1}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->useDefaultTextClassifier()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;->useDefaultTextClassifier:Z

    return-void
.end method
