.class public interface abstract Lcom/android/server/pm/verify/domain/DomainVerificationShell$Callback;
.super Ljava/lang/Object;
.source "DomainVerificationShell.java"


# virtual methods
.method public abstract clearDomainVerificationState(Ljava/util/List;)V
.end method

.method public abstract clearUserStates(Ljava/util/List;I)V
.end method

.method public abstract printOwnersForDomains(Landroid/util/IndentingPrintWriter;Ljava/util/List;Ljava/lang/Integer;)V
.end method

.method public abstract printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
.end method

.method public abstract printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
.end method

.method public abstract setDomainVerificationLinkHandlingAllowedInternal(Ljava/lang/String;ZI)V
.end method

.method public abstract setDomainVerificationStatusInternal(Ljava/lang/String;ILandroid/util/ArraySet;)V
.end method

.method public abstract setDomainVerificationUserSelectionInternal(ILjava/lang/String;ZLandroid/util/ArraySet;)V
.end method

.method public abstract verifyPackages(Ljava/util/List;Z)V
.end method
