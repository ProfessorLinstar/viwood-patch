.class public abstract Lcom/android/server/appwidget/AppWidgetXmlUtil;
.super Ljava/lang/Object;
.source "AppWidgetXmlUtil.java"


# direct methods
.method public static deserializeWidgetSizesStr(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    :try_start_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 178
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 179
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 181
    const-string v1, "AppWidgetXmlUtil"

    const-string v2, "Error parsing widget sizes"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static readAppWidgetProviderInfoLocked(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 5

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    const-string/jumbo v0, "os_fingerprint"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 134
    :cond_0
    new-instance v0, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 135
    const-string/jumbo v2, "min_width"

    const/4 v3, 0x0

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 136
    const-string/jumbo v2, "min_height"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 137
    const-string/jumbo v2, "min_resize_width"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 138
    const-string/jumbo v2, "min_resize_height"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 139
    const-string/jumbo v2, "max_resize_width"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    .line 140
    const-string/jumbo v2, "max_resize_height"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    .line 141
    const-string/jumbo v2, "target_cell_width"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    .line 142
    const-string/jumbo v2, "target_cell_height"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    .line 143
    const-string/jumbo v2, "update_period_millis"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 144
    const-string v2, "initial_layout"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 145
    const-string v2, "initial_keyguard_layout"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 147
    const-string v2, "configure"

    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 149
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 151
    :cond_1
    const-string/jumbo v2, "label"

    invoke-interface {p0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 152
    const-string v2, "icon"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 153
    const-string/jumbo v2, "preview_image"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 154
    const-string/jumbo v2, "preview_layout"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    .line 155
    const-string v2, "auto_advance_view_id"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 156
    const-string/jumbo v2, "resize_mode"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 157
    const-string/jumbo v2, "widget_category"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 158
    const-string/jumbo v2, "widget_features"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    .line 159
    const-string v2, "description_res"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    .line 160
    const-string/jumbo v2, "provider_inheritance"

    invoke-interface {p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Landroid/appwidget/AppWidgetProviderInfo;->isExtendedFromAppWidgetProvider:Z

    return-object v0
.end method

.method public static serializeWidgetSizes(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    .line 167
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/appwidget/AppWidgetXmlUtil$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ","

    .line 168
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static writeAppWidgetProviderInfoLocked(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    const-string/jumbo v0, "min_width"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    const-string/jumbo v0, "min_height"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    const-string/jumbo v0, "min_resize_width"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    const-string/jumbo v0, "min_resize_height"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    const-string/jumbo v0, "max_resize_width"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    const-string/jumbo v0, "max_resize_height"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    const-string/jumbo v0, "target_cell_width"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    const-string/jumbo v0, "target_cell_height"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    const-string/jumbo v0, "update_period_millis"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    const-string v0, "initial_layout"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    const-string v0, "initial_keyguard_layout"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 106
    const-string v1, "configure"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    :cond_0
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 109
    const-string/jumbo v1, "label"

    invoke-interface {p0, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    :cond_1
    const-string v0, "icon"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    const-string/jumbo v0, "preview_image"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    const-string/jumbo v0, "preview_layout"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewLayout:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    const-string v0, "auto_advance_view_id"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    const-string/jumbo v0, "resize_mode"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    const-string/jumbo v0, "widget_category"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    const-string/jumbo v0, "widget_features"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    const-string v0, "description_res"

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->descriptionRes:I

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    const-string/jumbo v0, "provider_inheritance"

    iget-boolean p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->isExtendedFromAppWidgetProvider:Z

    invoke-interface {p0, v2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    const-string/jumbo p1, "os_fingerprint"

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {p0, v2, p1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
