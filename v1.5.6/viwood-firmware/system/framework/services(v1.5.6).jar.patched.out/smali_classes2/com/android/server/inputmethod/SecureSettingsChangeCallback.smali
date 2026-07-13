.class public interface abstract Lcom/android/server/inputmethod/SecureSettingsChangeCallback;
.super Ljava/lang/Object;
.source "SecureSettingsChangeCallback.java"


# direct methods
.method public static register(Landroid/os/Handler;Landroid/content/ContentResolver;[Ljava/lang/String;Lcom/android/server/inputmethod/SecureSettingsChangeCallback;)V
    .locals 6

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 58
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    .line 59
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_0
    new-instance p2, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;

    invoke-direct {p2, p0, v0, p3}, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;-><init>(Landroid/os/Handler;Landroid/util/ArrayMap;Lcom/android/server/inputmethod/SecureSettingsChangeCallback;)V

    .line 73
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    .line 74
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p3, v2, p2, v0}, Landroid/content/ContentResolver;->registerContentObserverAsUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract onChange(Ljava/lang/String;II)V
.end method
