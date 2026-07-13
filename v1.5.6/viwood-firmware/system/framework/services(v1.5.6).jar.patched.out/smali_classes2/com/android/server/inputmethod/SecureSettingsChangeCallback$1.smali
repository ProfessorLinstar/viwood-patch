.class public Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;
.super Landroid/database/ContentObserver;
.source "SecureSettingsChangeCallback.java"


# instance fields
.field public final synthetic val$callback:Lcom/android/server/inputmethod/SecureSettingsChangeCallback;

.field public final synthetic val$uriMapper:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$mUm7_MlRs_rYS4P5EhwmlKuzLDM(Landroid/util/ArrayMap;Lcom/android/server/inputmethod/SecureSettingsChangeCallback;IILandroid/net/Uri;)V
    .locals 0

    .line 66
    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 68
    invoke-interface {p1, p0, p2, p3}, Lcom/android/server/inputmethod/SecureSettingsChangeCallback;->onChange(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/util/ArrayMap;Lcom/android/server/inputmethod/SecureSettingsChangeCallback;)V
    .locals 0

    .line 61
    iput-object p2, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;->val$uriMapper:Landroid/util/ArrayMap;

    iput-object p3, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;->val$callback:Lcom/android/server/inputmethod/SecureSettingsChangeCallback;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLjava/util/Collection;II)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;->val$uriMapper:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;->val$callback:Lcom/android/server/inputmethod/SecureSettingsChangeCallback;

    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0, p3, p4}, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;Lcom/android/server/inputmethod/SecureSettingsChangeCallback;II)V

    invoke-interface {p2, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
