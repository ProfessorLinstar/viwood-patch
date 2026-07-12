.class public Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;
.super Landroid/app/ambientcontext/IAmbientContextObserver$Stub;
.source "AmbientContextShellCommand.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;->this$0:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    invoke-direct {p0}, Landroid/app/ambientcontext/IAmbientContextObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvents(Ljava/util/List;)V
    .locals 2

    .line 88
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;->this$0:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    invoke-static {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$fputmLastEvents(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;Ljava/util/List;)V

    .line 89
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detection events available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onRegistrationComplete(I)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal$1;->this$0:Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;

    invoke-static {p0, p1}, Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;->-$$Nest$fputmLastStatus(Lcom/android/server/ambientcontext/AmbientContextShellCommand$TestableCallbackInternal;I)V

    return-void
.end method
