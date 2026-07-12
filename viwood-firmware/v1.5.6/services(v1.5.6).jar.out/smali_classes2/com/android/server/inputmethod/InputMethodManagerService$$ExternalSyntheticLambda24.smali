.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda24;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda24;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    check-cast p1, Lcom/android/server/inputmethod/UserData;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method
