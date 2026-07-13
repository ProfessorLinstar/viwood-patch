.class public abstract Lcom/android/server/autofill/ui/InlineSuggestionFactory;
.super Ljava/lang/Object;
.source "InlineSuggestionFactory.java"


# direct methods
.method public static synthetic $r8$lambda$N7aMZ2pgItHxYZKhFWmBOJKULlQ(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;I)V
    .locals 1

    const v0, 0xffff

    .line 56
    invoke-interface {p0, p1, v0}, Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;->authenticate(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$OZ32mr93W9cRZZF8hgtcuSLcrLc(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Landroid/service/autofill/Dataset;I)V
    .locals 0

    .line 114
    invoke-interface {p0, p1, p2}, Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;->autofill(Landroid/service/autofill/Dataset;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$W-b8D5LV8mjxDDKFiiqqz7dbxp8()V
    .locals 0

    .line 0
    return-void
.end method

.method public static createInlineAuthentication(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/view/inputmethod/InlineSuggestion;
    .locals 11

    .line 50
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    .line 53
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 55
    :goto_0
    new-instance v7, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda0;

    invoke-direct {v7, p2, v1}, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;I)V

    iget-object v1, p0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 58
    invoke-static {v1, v3, v0, v2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->mergedInlinePresentation(Landroid/view/inputmethod/InlineSuggestionsRequest;ILandroid/service/autofill/InlinePresentation;Z)Landroid/service/autofill/InlinePresentation;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    const-string v1, "android:autofill"

    .line 62
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object p1

    .line 60
    invoke-static {v0, p0, v1, p1}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestionTooltip(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Landroid/service/autofill/InlinePresentation;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v9

    .line 55
    const-string v5, "android:autofill"

    const-string v6, "android:autofill:action"

    move-object v4, p0

    move-object v10, p2

    invoke-static/range {v4 .. v10}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestion(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/service/autofill/InlinePresentation;Landroid/view/inputmethod/InlineSuggestion;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object p0

    return-object p0
.end method

.method public static createInlineContentProvider(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Lcom/android/internal/view/inline/IInlineContentProvider;
    .locals 1

    .line 230
    new-instance v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V

    .line 234
    new-instance p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    return-object p0
.end method

.method public static createInlineSuggestion(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/service/autofill/InlinePresentation;Landroid/view/inputmethod/InlineSuggestion;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/view/inputmethod/InlineSuggestion;
    .locals 7

    .line 134
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionInfo;

    .line 135
    invoke-virtual {p4}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v1

    .line 136
    invoke-virtual {p4}, Landroid/service/autofill/InlinePresentation;->getAutofillHints()[Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-virtual {p4}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result v5

    move-object v2, p1

    move-object v4, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/inputmethod/InlineSuggestionInfo;-><init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)V

    .line 139
    new-instance p1, Landroid/view/inputmethod/InlineSuggestion;

    .line 140
    invoke-static {p0, p4, p3, p6}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineContentProvider(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Lcom/android/internal/view/inline/IInlineContentProvider;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    return-object p1
.end method

.method public static createInlineSuggestionTooltip(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Landroid/service/autofill/InlinePresentation;)Landroid/view/inputmethod/InlineSuggestion;
    .locals 7

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getInlineTooltipPresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object p0

    if-nez p0, :cond_1

    .line 180
    invoke-virtual {p3}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object p0

    :goto_0
    move-object v1, p0

    goto :goto_1

    .line 182
    :cond_1
    new-instance v0, Landroid/widget/inline/InlinePresentationSpec$Builder;

    .line 183
    invoke-virtual {p3}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    move-result-object v1

    .line 184
    invoke-virtual {p3}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/inline/InlinePresentationSpec$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;)V

    .line 185
    invoke-virtual {p0}, Landroid/widget/inline/InlinePresentationSpec;->getStyle()Landroid/os/Bundle;

    move-result-object p0

    .line 184
    invoke-virtual {v0, p0}, Landroid/widget/inline/InlinePresentationSpec$Builder;->setStyle(Landroid/os/Bundle;)Landroid/widget/inline/InlinePresentationSpec$Builder;

    move-result-object p0

    .line 185
    invoke-virtual {p0}, Landroid/widget/inline/InlinePresentationSpec$Builder;->build()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object p0

    goto :goto_0

    .line 188
    :goto_1
    new-instance p0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$1;

    invoke-direct {p0}, Lcom/android/server/autofill/ui/InlineSuggestionFactory$1;-><init>()V

    .line 216
    new-instance v0, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p3}, Landroid/service/autofill/InlinePresentation;->getSlice()Landroid/app/slice/Slice;

    move-result-object p3

    const/4 v2, 0x0

    invoke-direct {v0, p3, v1, v2}, Landroid/service/autofill/InlinePresentation;-><init>(Landroid/app/slice/Slice;Landroid/widget/inline/InlinePresentationSpec;Z)V

    .line 218
    new-instance p3, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda2;

    invoke-direct {p3}, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v0, p3, p0}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineContentProvider(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Lcom/android/internal/view/inline/IInlineContentProvider;

    move-result-object p0

    .line 220
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string v4, "android:autofill:suggestion"

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/inputmethod/InlineSuggestionInfo;-><init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)V

    .line 223
    new-instance p1, Landroid/view/inputmethod/InlineSuggestion;

    invoke-direct {p1, v0, p0}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    return-object p1
.end method

.method public static createInlineSuggestions(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/util/List;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Z)Landroid/util/SparseArray;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 76
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v7, "InlineSuggestionFactory"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createInlineSuggestions(source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object v8, v0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 79
    new-instance v9, Landroid/util/SparseArray;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v9, v2}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v2, 0x0

    move v10, v2

    .line 82
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v10, v3, :cond_6

    move-object/from16 v11, p2

    .line 83
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/service/autofill/Dataset;

    .line 84
    invoke-virtual {v12}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutofillId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not found in dataset"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v12, v3}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v4

    if-nez v4, :cond_2

    .line 93
    const-string v3, "InlinePresentation not found in dataset"

    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move/from16 v14, p4

    goto :goto_5

    .line 98
    :cond_2
    invoke-virtual {v12}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, "android:autofill:suggestion"

    goto :goto_2

    .line 99
    :cond_3
    const-string v5, "android:autofill:action"

    :goto_2
    if-nez v2, :cond_5

    .line 107
    invoke-virtual {v12, v3}, Landroid/service/autofill/Dataset;->getFieldInlineTooltipPresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v3

    .line 105
    invoke-static {v8, v0, v1, v3}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestionTooltip(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Landroid/service/autofill/InlinePresentation;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    :goto_3
    move v13, v2

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 112
    :goto_4
    new-instance v2, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;

    move-object/from16 v6, p3

    invoke-direct {v2, v6, v12, v10}, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Landroid/service/autofill/Dataset;I)V

    move/from16 v14, p4

    .line 115
    invoke-static {v8, v10, v4, v14}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->mergedInlinePresentation(Landroid/view/inputmethod/InlineSuggestionsRequest;ILandroid/service/autofill/InlinePresentation;Z)Landroid/service/autofill/InlinePresentation;

    move-result-object v4

    move-object v15, v3

    move-object v3, v2

    move-object v2, v5

    move-object v5, v15

    .line 112
    invoke-static/range {v0 .. v6}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestion(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/service/autofill/InlinePresentation;Landroid/view/inputmethod/InlineSuggestion;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v2

    .line 119
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move v2, v13

    :goto_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_6
    return-object v9
.end method

.method public static mergedInlinePresentation(Landroid/view/inputmethod/InlineSuggestionsRequest;ILandroid/service/autofill/InlinePresentation;Z)Landroid/service/autofill/InlinePresentation;
    .locals 1

    .line 151
    invoke-virtual {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getInlinePresentationSpecs()Ljava/util/List;

    move-result-object p0

    .line 152
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 155
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/inline/InlinePresentationSpec;

    if-eqz p3, :cond_1

    .line 157
    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object p0

    .line 158
    :cond_1
    new-instance p1, Landroid/widget/inline/InlinePresentationSpec$Builder;

    .line 159
    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    move-result-object p3

    .line 160
    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Landroid/widget/inline/InlinePresentationSpec$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;)V

    .line 161
    invoke-virtual {p0}, Landroid/widget/inline/InlinePresentationSpec;->getStyle()Landroid/os/Bundle;

    move-result-object p0

    .line 160
    invoke-virtual {p1, p0}, Landroid/widget/inline/InlinePresentationSpec$Builder;->setStyle(Landroid/os/Bundle;)Landroid/widget/inline/InlinePresentationSpec$Builder;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Landroid/widget/inline/InlinePresentationSpec$Builder;->build()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object p0

    .line 163
    new-instance p1, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getSlice()Landroid/app/slice/Slice;

    move-result-object p3

    .line 164
    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result p2

    invoke-direct {p1, p3, p0, p2}, Landroid/service/autofill/InlinePresentation;-><init>(Landroid/app/slice/Slice;Landroid/widget/inline/InlinePresentationSpec;Z)V

    return-object p1
.end method
