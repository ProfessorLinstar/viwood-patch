.class public final Lcom/android/server/inputmethod/SystemLocaleWrapper$LocaleChangeListener;
.super Landroid/content/BroadcastReceiver;
.source "SystemLocaleWrapper.java"


# instance fields
.field public final mCallback:Lcom/android/server/inputmethod/SystemLocaleWrapper$Callback;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/inputmethod/SystemLocaleWrapper$Callback;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/server/inputmethod/SystemLocaleWrapper$LocaleChangeListener;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/server/inputmethod/SystemLocaleWrapper$LocaleChangeListener;->mCallback:Lcom/android/server/inputmethod/SystemLocaleWrapper$Callback;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 98
    const-string p1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/android/server/inputmethod/SystemLocaleWrapper$LocaleChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    .line 102
    invoke-static {}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->-$$Nest$sfgetsSystemLocale()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/LocaleList;

    .line 103
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object p0, p0, Lcom/android/server/inputmethod/SystemLocaleWrapper$LocaleChangeListener;->mCallback:Lcom/android/server/inputmethod/SystemLocaleWrapper$Callback;

    invoke-interface {p0, p2, p1}, Lcom/android/server/inputmethod/SystemLocaleWrapper$Callback;->onLocaleChanged(Landroid/os/LocaleList;Landroid/os/LocaleList;)V

    :cond_1
    :goto_0
    return-void
.end method
