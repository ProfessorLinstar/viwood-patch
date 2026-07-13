.class public Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;
.super Ljava/lang/Object;
.source "LogFieldClassificationScoreOnResultListener.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final mAutofillIds:[Landroid/view/autofill/AutofillId;

.field public final mCategoryIds:[Ljava/lang/String;

.field public final mCommitReason:I

.field public final mDetectedFieldClassifications:Ljava/util/ArrayList;

.field public final mDetectedFieldIds:Ljava/util/ArrayList;

.field public final mSaveDialogNotShowReason:I

.field public mSession:Lcom/android/server/autofill/Session;

.field public final mUserValues:[Ljava/lang/String;

.field public final mViewsSize:I


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;III[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mSession:Lcom/android/server/autofill/Session;

    .line 50
    iput p2, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mSaveDialogNotShowReason:I

    .line 51
    iput p3, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mCommitReason:I

    .line 52
    iput p4, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mViewsSize:I

    .line 53
    iput-object p5, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mAutofillIds:[Landroid/view/autofill/AutofillId;

    .line 54
    iput-object p6, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mUserValues:[Ljava/lang/String;

    .line 55
    iput-object p7, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mCategoryIds:[Ljava/lang/String;

    .line 56
    iput-object p8, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mDetectedFieldIds:Ljava/util/ArrayList;

    .line 57
    iput-object p9, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mDetectedFieldClassifications:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 10

    .line 62
    iget-object v0, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mSession:Lcom/android/server/autofill/Session;

    if-nez v0, :cond_0

    .line 64
    const-string p0, "LogFieldClassificationScoreOnResultListener"

    const-string/jumbo p1, "session is null when calling onResult()"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 67
    :cond_0
    iget v2, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mSaveDialogNotShowReason:I

    iget v3, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mCommitReason:I

    iget v4, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mViewsSize:I

    iget-object v5, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mAutofillIds:[Landroid/view/autofill/AutofillId;

    iget-object v6, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mUserValues:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mCategoryIds:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mDetectedFieldIds:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mDetectedFieldClassifications:Ljava/util/ArrayList;

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/autofill/Session;->handleLogFieldClassificationScore(Landroid/os/Bundle;III[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;->mSession:Lcom/android/server/autofill/Session;

    return-void
.end method
