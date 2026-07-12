.class final Lcom/android/server/autofill/RemoteAugmentedAutofillService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteAugmentedAutofillService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/autofill/augmented/IAugmentedAutofillService;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallbacks:Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mIdleUnbindTimeoutMs:I

.field private final mRequestTimeoutMs:I

.field private final mUriGrantsManager:Lcom/android/server/autofill/AutofillUriGrantsManager;


# direct methods
.method public static synthetic $r8$lambda$IXYPMbjPeMt7KfClcttRpU_yFvU(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/ComponentName;ILjava/lang/Void;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->lambda$onRequestAutofillLocked$1(Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/ComponentName;ILjava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oi_ZVEWM5rDlcUG4LKATvAkw2Sk(Landroid/service/autofill/augmented/IAugmentedAutofillService;)V
    .locals 0

    .line 381
    invoke-interface {p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onDestroyAllFillWindowsRequest()V

    return-void
.end method

.method public static synthetic $r8$lambda$VqhKdxMMAcUlTejDcRQC9U9LBYg(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/view/autofill/IAutoFillManagerClient;IILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/os/IBinder;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/augmented/IAugmentedAutofillService;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p16}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->lambda$onRequestAutofillLocked$0(Landroid/view/autofill/IAutoFillManagerClient;IILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/os/IBinder;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/augmented/IAugmentedAutofillService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WqtKfl_vHhcuvSCPBSMUqrYUIuY(Landroid/os/ICancellationSignal;)V
    .locals 2

    .line 241
    :try_start_0
    invoke-interface {p0}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 243
    sget-object v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    const-string v1, "Error requesting a cancellation"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mCallbacks:Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUriGrantsManager(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/AutofillUriGrantsManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mUriGrantsManager:Lcom/android/server/autofill/AutofillUriGrantsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeRequestShowInlineSuggestions(Lcom/android/server/autofill/RemoteAugmentedAutofillService;ILandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/List;Landroid/os/Bundle;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/function/Function;Landroid/view/autofill/IAutoFillManagerClient;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p13}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->maybeRequestShowInlineSuggestions(ILandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/List;Landroid/os/Bundle;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/function/Function;Landroid/view/autofill/IAutoFillManagerClient;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 71
    const-class v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/ComponentName;ILcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;ZZII)V
    .locals 6

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.autofill.augmented.AugmentedAutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    if-eqz p6, :cond_0

    const/high16 v0, 0x400000

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 85
    :goto_1
    new-instance v5, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    .line 83
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 87
    iput p8, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mIdleUnbindTimeoutMs:I

    move v1, p9

    .line 88
    iput v1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mRequestTimeoutMs:I

    .line 89
    iput-object p3, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mComponentName:Landroid/content/ComponentName;

    .line 90
    iput-object p5, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mCallbacks:Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    .line 91
    new-instance v1, Lcom/android/server/autofill/AutofillUriGrantsManager;

    invoke-direct {v1, p2}, Lcom/android/server/autofill/AutofillUriGrantsManager;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mUriGrantsManager:Lcom/android/server/autofill/AutofillUriGrantsManager;

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public static getComponentName(Ljava/lang/String;IZ)Landroid/util/Pair;
    .locals 5

    if-nez p2, :cond_0

    const p2, 0x100080

    goto :goto_0

    :cond_0
    const/16 p2, 0x80

    :goto_0
    const/4 v0, 0x0

    .line 108
    :try_start_0
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 109
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    int-to-long v3, p2

    invoke-interface {v2, v1, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    if-nez p1, :cond_1

    .line 112
    sget-object p1, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad service name for flags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 119
    :cond_1
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 116
    :goto_1
    sget-object p2, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting service info for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\': "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public dispatchCancellation(Landroid/os/ICancellationSignal;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda4;-><init>(Landroid/os/ICancellationSignal;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 147
    iget p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mIdleUnbindTimeoutMs:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public getAutofillUriGrantsManager()Lcom/android/server/autofill/AutofillUriGrantsManager;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mUriGrantsManager:Lcom/android/server/autofill/AutofillUriGrantsManager;

    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final synthetic lambda$onRequestAutofillLocked$0(Landroid/view/autofill/IAutoFillManagerClient;IILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/os/IBinder;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/augmented/IAugmentedAutofillService;)Ljava/util/concurrent/CompletableFuture;
    .locals 19

    .line 164
    new-instance v17, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 167
    new-instance v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v18, p15

    move-object/from16 v2, p16

    invoke-direct/range {v0 .. v18}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/service/autofill/augmented/IAugmentedAutofillService;IILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/function/Function;Landroid/view/autofill/IAutoFillManagerClient;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/os/IBinder;Lcom/android/internal/infra/AndroidFuture;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v12, v0}, Landroid/view/autofill/IAutoFillManagerClient;->getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V

    return-object v17
.end method

.method public final synthetic lambda$onRequestAutofillLocked$1(Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/ComponentName;ILjava/lang/Void;Ljava/lang/Throwable;)V
    .locals 6

    .line 215
    instance-of p4, p5, Ljava/util/concurrent/CancellationException;

    if-eqz p4, :cond_0

    .line 216
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ICancellationSignal;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->dispatchCancellation(Landroid/os/ICancellationSignal;)V

    return-void

    .line 217
    :cond_0
    instance-of p4, p5, Ljava/util/concurrent/TimeoutException;

    if-eqz p4, :cond_1

    .line 218
    sget-object p4, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PendingAutofillRequest timed out ("

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mRequestTimeoutMs:I

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms) for "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ICancellationSignal;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->dispatchCancellation(Landroid/os/ICancellationSignal;)V

    .line 222
    iget-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mComponentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_2

    .line 223
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mRequestTimeoutMs:I

    int-to-long v4, p0

    const/16 v0, 0xf

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Landroid/service/autofill/augmented/Helper;->logResponse(ILjava/lang/String;Landroid/content/ComponentName;IJ)V

    return-void

    :cond_1
    move v3, p3

    if-eqz p5, :cond_2

    .line 227
    sget-object p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception handling getAugmentedAutofillClient() for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public final maybeRequestShowInlineSuggestions(ILandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/List;Landroid/os/Bundle;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/function/Function;Landroid/view/autofill/IAutoFillManagerClient;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11

    if-eqz p3, :cond_0

    .line 258
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p7, :cond_0

    if-eqz p2, :cond_0

    if-nez p10, :cond_1

    :cond_0
    move-object/from16 v5, p7

    goto :goto_2

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mCallbacks:Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;->setLastResponse(I)V

    if-eqz p6, :cond_2

    .line 271
    invoke-virtual/range {p6 .. p6}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    invoke-virtual/range {p6 .. p6}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 274
    :goto_1
    new-instance v1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;

    move v7, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v5, p10

    move/from16 v6, p11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;-><init>(Landroid/view/inputmethod/InlineSuggestionsRequest;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)V

    move-object p2, v1

    .line 278
    new-instance v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p4

    move-object/from16 v6, p5

    move-object/from16 v5, p7

    move-object/from16 v4, p8

    move-object/from16 v10, p9

    move/from16 v9, p11

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    invoke-direct/range {v0 .. v10}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;ILandroid/os/Bundle;Landroid/view/autofill/IAutoFillManagerClient;Ljava/util/function/Function;Landroid/view/autofill/AutofillId;Landroid/content/ComponentName;Landroid/os/IBinder;ILjava/lang/Runnable;)V

    .line 279
    invoke-static {p2, p3, v0}, Lcom/android/server/autofill/ui/InlineFillUi;->forAugmentedAutofill(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/util/List;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object p2

    .line 366
    invoke-interface {v5, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 367
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mCallbacks:Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    move-object v3, p4

    invoke-interface {p0, p1, p4}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;->logAugmentedAutofillShown(ILandroid/os/Bundle;)V

    return-void

    :goto_2
    if-eqz v5, :cond_3

    if-eqz p2, :cond_3

    .line 264
    invoke-static/range {p5 .. p5}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object p0

    invoke-interface {v5, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public onDestroyAutofillWindowsRequest()V
    .locals 1

    .line 381
    new-instance v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public onRequestAutofillLocked(ILandroid/view/autofill/IAutoFillManagerClient;ILandroid/content/ComponentName;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;I)V
    .locals 17

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 161
    new-instance v16, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 163
    new-instance v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v2, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v15, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    invoke-direct/range {v0 .. v16}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/view/autofill/IAutoFillManagerClient;IILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/os/IBinder;Ljava/util/concurrent/atomic/AtomicReference;)V

    move-object v2, v0

    move-object/from16 v0, v16

    invoke-virtual {v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    iget v3, v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mRequestTimeoutMs:I

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 213
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    new-instance v3, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda3;

    move/from16 v4, p1

    move-object/from16 v5, p4

    invoke-direct {v3, v1, v0, v5, v4}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/ComponentName;I)V

    .line 214
    invoke-virtual {v2, v3}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 0

    .line 68
    check-cast p1, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onServiceConnectionStatusChanged(Landroid/service/autofill/augmented/IAugmentedAutofillService;Z)V

    return-void
.end method

.method public onServiceConnectionStatusChanged(Landroid/service/autofill/augmented/IAugmentedAutofillService;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 135
    :try_start_0
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    invoke-interface {p1, p0, v0}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onConnected(ZZ)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 137
    :cond_0
    invoke-interface {p1}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 140
    :goto_0
    sget-object p1, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception calling onServiceConnectionStatusChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteAugmentedAutofillService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mComponentName:Landroid/content/ComponentName;

    .line 374
    invoke-static {p0}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
