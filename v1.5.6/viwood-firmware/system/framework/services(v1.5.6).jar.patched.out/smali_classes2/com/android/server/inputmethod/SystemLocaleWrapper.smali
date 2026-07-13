.class public abstract Lcom/android/server/inputmethod/SystemLocaleWrapper;
.super Ljava/lang/Object;
.source "SystemLocaleWrapper.java"


# static fields
.field public static final sSystemLocale:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetsSystemLocale()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/inputmethod/SystemLocaleWrapper;->sSystemLocale:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/os/LocaleList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Locale;

    const/4 v3, 0x0

    .line 44
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/inputmethod/SystemLocaleWrapper;->sSystemLocale:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static get(I)Landroid/os/LocaleList;
    .locals 0

    .line 60
    sget-object p0, Lcom/android/server/inputmethod/SystemLocaleWrapper;->sSystemLocale:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/LocaleList;

    return-object p0
.end method

.method public static onStart(Landroid/content/Context;Lcom/android/server/inputmethod/SystemLocaleWrapper$Callback;Landroid/os/Handler;)V
    .locals 2

    .line 80
    sget-object v0, Lcom/android/server/inputmethod/SystemLocaleWrapper;->sSystemLocale:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 82
    new-instance v0, Lcom/android/server/inputmethod/SystemLocaleWrapper$LocaleChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/SystemLocaleWrapper$LocaleChangeListener;-><init>(Landroid/content/Context;Lcom/android/server/inputmethod/SystemLocaleWrapper$Callback;)V

    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
