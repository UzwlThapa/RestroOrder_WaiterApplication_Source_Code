###### Class android.support.graphics.drawable.AnimatorInflaterCompat (android.support.graphics.drawable.AnimatorInflaterCompat)
.class public Landroid/support/graphics/drawable/AnimatorInflaterCompat;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final SEQUENTIALLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x3

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final VALUE_TYPE_UNDEFINED:I = 0x4

.field private static final sTmpTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->sTmpTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .registers 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "parent"    # Landroid/animation/AnimatorSet;
    .param p6, "sequenceOrdering"    # I
    .param p7, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    const/4 v13, 0x0

    .line 426
    .local v13, "anim":Landroid/animation/Animator;
    const/4 v15, 0x0

    .line 430
    .local v15, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v16

    .line 432
    .local v16, "depth":I
    :cond_6
    :goto_6
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, "type":I
    const/4 v4, 0x3

    move/from16 v0, v21

    if-ne v0, v4, :cond_17

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move/from16 v0, v16

    if-le v4, v0, :cond_f2

    :cond_17
    const/4 v4, 0x1

    move/from16 v0, v21

    if-eq v0, v4, :cond_f2

    .line 435
    const/4 v4, 0x2

    move/from16 v0, v21

    if-ne v0, v4, :cond_6

    .line 439
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 440
    .local v20, "name":Ljava/lang/String;
    const/16 v17, 0x0

    .line 442
    .local v17, "gotValues":Z
    const-string v4, "objectAnimator"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move/from16 v8, p7

    move-object/from16 v9, p3

    .line 443
    invoke-static/range {v4 .. v9}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadObjectAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 468
    :goto_41
    if-eqz p5, :cond_6

    if-nez v17, :cond_6

    .line 469
    if-nez v15, :cond_4c

    .line 470
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .restart local v15    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_4c
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 444
    :cond_50
    const-string v4, "animator"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 445
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move/from16 v9, p7

    move-object/from16 v10, p3

    invoke-static/range {v4 .. v10}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    move-result-object v13

    goto :goto_41

    .line 446
    :cond_6c
    const-string v4, "set"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 447
    new-instance v13, Landroid/animation/AnimatorSet;

    .end local v13    # "anim":Landroid/animation/Animator;
    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 448
    .restart local v13    # "anim":Landroid/animation/Animator;
    sget-object v4, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR_SET:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2, v4}, Landroid/support/graphics/drawable/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 451
    .local v12, "a":Landroid/content/res/TypedArray;
    const-string v4, "ordering"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-static {v12, v0, v4, v5, v6}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v10

    .local v10, "ordering":I
    move-object v9, v13

    .line 454
    check-cast v9, Landroid/animation/AnimatorSet;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v11, p7

    invoke-static/range {v4 .. v11}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 456
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_41

    .line 457
    .end local v10    # "ordering":I
    .end local v12    # "a":Landroid/content/res/TypedArray;
    :cond_a7
    const-string v4, "propertyValuesHolder"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 459
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 458
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v22

    .line 460
    .local v22, "values":[Landroid/animation/PropertyValuesHolder;
    if-eqz v22, :cond_d1

    if-eqz v13, :cond_d1

    instance-of v4, v13, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_d1

    move-object v4, v13

    .line 461
    check-cast v4, Landroid/animation/ValueAnimator;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 463
    :cond_d1
    const/16 v17, 0x1

    .line 464
    goto/16 :goto_41

    .line 465
    .end local v22    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_d5
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown animator name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 475
    .end local v17    # "gotValues":Z
    .end local v20    # "name":Ljava/lang/String;
    :cond_f2
    if-eqz p5, :cond_11c

    if-eqz v15, :cond_11c

    .line 476
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v14, v4, [Landroid/animation/Animator;

    .line 477
    .local v14, "animsArray":[Landroid/animation/Animator;
    const/16 v18, 0x0

    .line 478
    .local v18, "index":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_102
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_115

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/Animator;

    .line 479
    .local v12, "a":Landroid/animation/Animator;
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "index":I
    .local v19, "index":I
    aput-object v12, v14, v18

    move/from16 v18, v19

    .line 480
    .end local v19    # "index":I
    .restart local v18    # "index":I
    goto :goto_102

    .line 481
    .end local v12    # "a":Landroid/animation/Animator;
    :cond_115
    if-nez p6, :cond_11d

    .line 482
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 487
    .end local v14    # "animsArray":[Landroid/animation/Animator;
    .end local v18    # "index":I
    :cond_11c
    :goto_11c
    return-object v13

    .line 484
    .restart local v14    # "animsArray":[Landroid/animation/Animator;
    .restart local v18    # "index":I
    :cond_11d
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_11c
.end method

.method private static createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .registers 4
    .param p0, "sampleKeyframe"    # Landroid/animation/Keyframe;
    .param p1, "fraction"    # F

    .prologue
    .line 695
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_d

    .line 696
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    .line 699
    :goto_c
    return-object v0

    .line 697
    :cond_d
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1a

    .line 698
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_c

    .line 699
    :cond_1a
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_c
.end method

.method private static distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .registers 9
    .param p0, "keyframes"    # [Landroid/animation/Keyframe;
    .param p1, "gap"    # F
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 722
    sub-int v3, p3, p2

    add-int/lit8 v0, v3, 0x2

    .line 723
    .local v0, "count":I
    int-to-float v3, v0

    div-float v2, p1, v3

    .line 724
    .local v2, "increment":F
    move v1, p2

    .local v1, "i":I
    :goto_8
    if-gt v1, p3, :cond_1b

    .line 725
    aget-object v3, p0, v1

    add-int/lit8 v4, v1, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 724
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 727
    :cond_1b
    return-void
.end method

.method private static dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .registers 9
    .param p0, "keyframes"    # [Ljava/lang/Object;
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 589
    if-eqz p0, :cond_5

    array-length v3, p0

    if-nez v3, :cond_6

    .line 600
    :cond_5
    return-void

    .line 592
    :cond_6
    const-string v3, "AnimatorInflater"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    array-length v0, p0

    .line 594
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_5

    .line 595
    aget-object v2, p0, v1

    check-cast v2, Landroid/animation/Keyframe;

    .line 596
    .local v2, "keyframe":Landroid/animation/Keyframe;
    const-string v4, "AnimatorInflater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keyframe "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": fraction "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 597
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    const/4 v6, 0x0

    cmpg-float v3, v3, v6

    if-gez v3, :cond_5d

    const-string v3, "null"

    :goto_35
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", value : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 598
    invoke-virtual {v2}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v3

    :goto_4f
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 596
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 597
    :cond_5d
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_35

    .line 598
    :cond_66
    const-string v3, "null"

    goto :goto_4f
.end method

.method private static getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .registers 26
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueType"    # I
    .param p2, "valueFromId"    # I
    .param p3, "valueToId"    # I
    .param p4, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 201
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v14

    .line 202
    .local v14, "tvFrom":Landroid/util/TypedValue;
    if-eqz v14, :cond_9a

    const/4 v7, 0x1

    .line 203
    .local v7, "hasFrom":Z
    :goto_b
    if-eqz v7, :cond_9d

    iget v5, v14, Landroid/util/TypedValue;->type:I

    .line 204
    .local v5, "fromType":I
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 205
    .local v15, "tvTo":Landroid/util/TypedValue;
    if-eqz v15, :cond_a0

    const/4 v8, 0x1

    .line 206
    .local v8, "hasTo":Z
    :goto_1a
    if-eqz v8, :cond_a3

    iget v13, v15, Landroid/util/TypedValue;->type:I

    .line 208
    .local v13, "toType":I
    :goto_1e
    const/16 v18, 0x4

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_38

    .line 210
    if-eqz v7, :cond_2e

    invoke-static {v5}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v18

    if-nez v18, :cond_36

    :cond_2e
    if-eqz v8, :cond_a6

    invoke-static {v13}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v18

    if-eqz v18, :cond_a6

    .line 211
    :cond_36
    const/16 p1, 0x3

    .line 217
    :cond_38
    :goto_38
    if-nez p1, :cond_a9

    const/4 v6, 0x1

    .line 219
    .local v6, "getFloats":Z
    :goto_3b
    const/4 v11, 0x0

    .line 221
    .local v11, "returnValue":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_f9

    .line 222
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "fromString":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 226
    .local v12, "toString":Ljava/lang/String;
    invoke-static {v4}, Landroid/support/graphics/drawable/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object v9

    .line 228
    .local v9, "nodesFrom":[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    invoke-static {v12}, Landroid/support/graphics/drawable/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object v10

    .line 229
    .local v10, "nodesTo":[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    if-nez v9, :cond_60

    if-eqz v10, :cond_c3

    .line 230
    :cond_60
    if-eqz v9, :cond_d9

    .line 231
    new-instance v3, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>(Landroid/support/graphics/drawable/AnimatorInflaterCompat$1;)V

    .line 232
    .local v3, "evaluator":Landroid/animation/TypeEvaluator;
    if-eqz v10, :cond_c4

    .line 233
    invoke-static {v9, v10}, Landroid/support/graphics/drawable/PathParser;->canMorph([Landroid/support/graphics/drawable/PathParser$PathDataNode;[Landroid/support/graphics/drawable/PathParser$PathDataNode;)Z

    move-result v18

    if-nez v18, :cond_ab

    .line 234
    new-instance v18, Landroid/view/InflateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " Can\'t morph from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 202
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v5    # "fromType":I
    .end local v6    # "getFloats":Z
    .end local v7    # "hasFrom":Z
    .end local v8    # "hasTo":Z
    .end local v9    # "nodesFrom":[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .end local v10    # "nodesTo":[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .end local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "toString":Ljava/lang/String;
    .end local v13    # "toType":I
    .end local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_9a
    const/4 v7, 0x0

    goto/16 :goto_b

    .line 203
    .restart local v7    # "hasFrom":Z
    :cond_9d
    const/4 v5, 0x0

    goto/16 :goto_f

    .line 205
    .restart local v5    # "fromType":I
    .restart local v15    # "tvTo":Landroid/util/TypedValue;
    :cond_a0
    const/4 v8, 0x0

    goto/16 :goto_1a

    .line 206
    .restart local v8    # "hasTo":Z
    :cond_a3
    const/4 v13, 0x0

    goto/16 :goto_1e

    .line 213
    .restart local v13    # "toType":I
    :cond_a6
    const/16 p1, 0x0

    goto :goto_38

    .line 217
    :cond_a9
    const/4 v6, 0x0

    goto :goto_3b

    .line 237
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v4    # "fromString":Ljava/lang/String;
    .restart local v6    # "getFloats":Z
    .restart local v9    # "nodesFrom":[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .restart local v10    # "nodesTo":[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .restart local v11    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v12    # "toString":Ljava/lang/String;
    :cond_ab
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v9, v18, v19

    const/16 v19, 0x1

    aput-object v10, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 325
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v9    # "nodesFrom":[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .end local v10    # "nodesTo":[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .end local v12    # "toString":Ljava/lang/String;
    :cond_c3
    :goto_c3
    return-object v11

    .line 240
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .restart local v4    # "fromString":Ljava/lang/String;
    .restart local v9    # "nodesFrom":[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .restart local v10    # "nodesTo":[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .restart local v12    # "toString":Ljava/lang/String;
    :cond_c4
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v9, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_c3

    .line 243
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_d9
    if-eqz v10, :cond_c3

    .line 244
    new-instance v3, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>(Landroid/support/graphics/drawable/AnimatorInflaterCompat$1;)V

    .line 245
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_c3

    .line 250
    .end local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "fromString":Ljava/lang/String;
    .end local v9    # "nodesFrom":[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .end local v10    # "nodesTo":[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .end local v12    # "toString":Ljava/lang/String;
    :cond_f9
    const/4 v3, 0x0

    .line 252
    .restart local v3    # "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_106

    .line 254
    invoke-static {}, Landroid/support/graphics/drawable/ArgbEvaluator;->getInstance()Landroid/support/graphics/drawable/ArgbEvaluator;

    move-result-object v3

    .line 256
    :cond_106
    if-eqz v6, :cond_1b4

    .line 259
    if-eqz v7, :cond_180

    .line 260
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v5, v0, :cond_151

    .line 261
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v16

    .line 265
    .local v16, "valueFrom":F
    :goto_11c
    if-eqz v8, :cond_16b

    .line 266
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_15e

    .line 267
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 271
    .local v17, "valueTo":F
    :goto_130
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    const/16 v19, 0x1

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 320
    .end local v16    # "valueFrom":F
    .end local v17    # "valueTo":F
    :cond_148
    :goto_148
    if-eqz v11, :cond_c3

    if-eqz v3, :cond_c3

    .line 321
    invoke-virtual {v11, v3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto/16 :goto_c3

    .line 263
    :cond_151
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    .restart local v16    # "valueFrom":F
    goto :goto_11c

    .line 269
    :cond_15e
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    .restart local v17    # "valueTo":F
    goto :goto_130

    .line 274
    .end local v17    # "valueTo":F
    :cond_16b
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_148

    .line 277
    .end local v16    # "valueFrom":F
    :cond_180
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_1a7

    .line 278
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 282
    .restart local v17    # "valueTo":F
    :goto_192
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto :goto_148

    .line 280
    .end local v17    # "valueTo":F
    :cond_1a7
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v17

    .restart local v17    # "valueTo":F
    goto :goto_192

    .line 287
    .end local v17    # "valueTo":F
    :cond_1b4
    if-eqz v7, :cond_256

    .line 288
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v5, v0, :cond_200

    .line 289
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 295
    .local v16, "valueFrom":I
    :goto_1cd
    if-eqz v8, :cond_240

    .line 296
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_220

    .line 297
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 303
    .local v17, "valueTo":I
    :goto_1e6
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    const/16 v19, 0x1

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto/16 :goto_148

    .line 290
    .end local v16    # "valueFrom":I
    .end local v17    # "valueTo":I
    :cond_200
    invoke-static {v5}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v18

    if-eqz v18, :cond_213

    .line 291
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v16

    .restart local v16    # "valueFrom":I
    goto :goto_1cd

    .line 293
    .end local v16    # "valueFrom":I
    :cond_213
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .restart local v16    # "valueFrom":I
    goto :goto_1cd

    .line 298
    :cond_220
    invoke-static {v13}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v18

    if-eqz v18, :cond_233

    .line 299
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_1e6

    .line 301
    .end local v17    # "valueTo":I
    :cond_233
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_1e6

    .line 305
    .end local v17    # "valueTo":I
    :cond_240
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v16, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto/16 :goto_148

    .line 308
    .end local v16    # "valueFrom":I
    :cond_256
    if-eqz v8, :cond_148

    .line 309
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v13, v0, :cond_285

    .line 310
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 316
    .restart local v17    # "valueTo":I
    :goto_26f
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v17, v18, v19

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    goto/16 :goto_148

    .line 311
    .end local v17    # "valueTo":I
    :cond_285
    invoke-static {v13}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v18

    if-eqz v18, :cond_298

    .line 312
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_26f

    .line 314
    .end local v17    # "valueTo":I
    :cond_298
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .restart local v17    # "valueTo":I
    goto :goto_26f
.end method

.method private static inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .registers 11
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueFromId"    # I
    .param p2, "valueToId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 571
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 572
    .local v4, "tvFrom":Landroid/util/TypedValue;
    if-eqz v4, :cond_29

    move v1, v2

    .line 573
    .local v1, "hasFrom":Z
    :goto_9
    if-eqz v1, :cond_2b

    iget v0, v4, Landroid/util/TypedValue;->type:I

    .line 574
    .local v0, "fromType":I
    :goto_d
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 575
    .local v5, "tvTo":Landroid/util/TypedValue;
    if-eqz v5, :cond_2d

    .line 576
    .local v2, "hasTo":Z
    :goto_13
    if-eqz v2, :cond_2f

    iget v3, v5, Landroid/util/TypedValue;->type:I

    .line 580
    .local v3, "toType":I
    :goto_17
    if-eqz v1, :cond_1f

    invoke-static {v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v7

    if-nez v7, :cond_27

    :cond_1f
    if-eqz v2, :cond_31

    invoke-static {v3}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 581
    :cond_27
    const/4 v6, 0x3

    .line 585
    .local v6, "valueType":I
    :goto_28
    return v6

    .end local v0    # "fromType":I
    .end local v1    # "hasFrom":Z
    .end local v2    # "hasTo":Z
    .end local v3    # "toType":I
    .end local v5    # "tvTo":Landroid/util/TypedValue;
    .end local v6    # "valueType":I
    :cond_29
    move v1, v7

    .line 572
    goto :goto_9

    .restart local v1    # "hasFrom":Z
    :cond_2b
    move v0, v7

    .line 573
    goto :goto_d

    .restart local v0    # "fromType":I
    .restart local v5    # "tvTo":Landroid/util/TypedValue;
    :cond_2d
    move v2, v7

    .line 575
    goto :goto_13

    .restart local v2    # "hasTo":Z
    :cond_2f
    move v3, v7

    .line 576
    goto :goto_17

    .line 583
    .restart local v3    # "toType":I
    :cond_31
    const/4 v6, 0x0

    .restart local v6    # "valueType":I
    goto :goto_28
.end method

.method private static inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v1, 0x0

    .line 552
    sget-object v4, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    invoke-static {p0, p1, p2, v4}, Landroid/support/graphics/drawable/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 555
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v4, "value"

    invoke-static {v0, p3, v4, v1}, Landroid/support/graphics/drawable/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v2

    .line 557
    .local v2, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v2, :cond_10

    const/4 v1, 0x1

    .line 560
    .local v1, "hasValue":Z
    :cond_10
    if-eqz v1, :cond_1f

    iget v4, v2, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 561
    const/4 v3, 0x3

    .line 565
    .local v3, "valueType":I
    :goto_1b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 566
    return v3

    .line 563
    .end local v3    # "valueType":I
    :cond_1f
    const/4 v3, 0x0

    .restart local v3    # "valueType":I
    goto :goto_1b
.end method

.method private static isColorType(I)Z
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 833
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_a

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 93
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_b

    .line 94
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 98
    .local v0, "objectAnimator":Landroid/animation/Animator;
    :goto_a
    return-object v0

    .line 96
    .end local v0    # "objectAnimator":Landroid/animation/Animator;
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {p0, v1, v2, p1}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v0

    .restart local v0    # "objectAnimator":Landroid/animation/Animator;
    goto :goto_a
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "id"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 113
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, p3, v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "id"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p4, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v2, 0x0

    .line 125
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 126
    invoke-static {p0, p1, p2, v2, p4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_8} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_37
    .catchall {:try_start_1 .. :try_end_8} :catchall_30

    move-result-object v0

    .line 141
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v2, :cond_e

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_e
    return-object v0

    .line 128
    .end local v0    # "animator":Landroid/animation/Animator;
    :catch_f
    move-exception v1

    .line 129
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_10
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load animation resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 131
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 132
    .local v3, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 133
    throw v3
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_30

    .line 141
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_30
    move-exception v4

    if-eqz v2, :cond_36

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_36
    throw v4

    .line 134
    :catch_37
    move-exception v1

    .line 135
    .local v1, "ex":Ljava/io/IOException;
    :try_start_38
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load animation resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 137
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 138
    .restart local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 139
    throw v3
    :try_end_58
    .catchall {:try_start_38 .. :try_end_58} :catchall_30
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "anim"    # Landroid/animation/ValueAnimator;
    .param p5, "pathErrorScale"    # F
    .param p6, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 806
    sget-object v4, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR:[I

    invoke-static {p1, p2, p3, v4}, Landroid/support/graphics/drawable/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 808
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    sget-object v4, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_ANIMATOR:[I

    invoke-static {p1, p2, p3, v4}, Landroid/support/graphics/drawable/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 811
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    if-nez p4, :cond_14

    .line 812
    new-instance p4, Landroid/animation/ValueAnimator;

    .end local p4    # "anim":Landroid/animation/ValueAnimator;
    invoke-direct {p4}, Landroid/animation/ValueAnimator;-><init>()V

    .line 815
    .restart local p4    # "anim":Landroid/animation/ValueAnimator;
    :cond_14
    invoke-static {p4, v0, v1, p5, p6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V

    .line 818
    const-string v4, "interpolator"

    invoke-static {v0, p6, v4, v5, v5}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedResId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 820
    .local v3, "resID":I
    if-lez v3, :cond_26

    .line 821
    invoke-static {p0, v3}, Landroid/support/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 822
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {p4, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 825
    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_26
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 826
    if-eqz v1, :cond_2e

    .line 827
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 829
    :cond_2e
    return-object p4
.end method

.method private static loadKeyframe(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "valueType"    # I
    .param p5, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    sget-object v10, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    move-object/from16 v0, p3

    invoke-static {p1, p2, v0, v10}, Landroid/support/graphics/drawable/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 737
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    .line 739
    .local v6, "keyframe":Landroid/animation/Keyframe;
    const-string v10, "fraction"

    const/4 v11, 0x3

    const/high16 v12, -0x40800000    # -1.0f

    move-object/from16 v0, p5

    invoke-static {v1, v0, v10, v11, v12}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    .line 742
    .local v2, "fraction":F
    const-string v10, "value"

    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-static {v1, v0, v10, v11}, Landroid/support/graphics/drawable/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v7

    .line 744
    .local v7, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v7, :cond_4d

    const/4 v3, 0x1

    .line 745
    .local v3, "hasValue":Z
    :goto_20
    const/4 v10, 0x4

    move/from16 v0, p4

    if-ne v0, v10, :cond_31

    .line 748
    if-eqz v3, :cond_4f

    iget v10, v7, Landroid/util/TypedValue;->type:I

    invoke-static {v10}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 749
    const/16 p4, 0x3

    .line 755
    :cond_31
    :goto_31
    if-eqz v3, :cond_70

    .line 756
    packed-switch p4, :pswitch_data_7c

    .line 774
    :goto_36
    :pswitch_36
    const-string v10, "interpolator"

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-static {v1, v0, v10, v11, v12}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedResId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v8

    .line 776
    .local v8, "resID":I
    if-lez v8, :cond_49

    .line 777
    invoke-static {p0, v8}, Landroid/support/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 778
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v6, v5}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 780
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_49
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 782
    return-object v6

    .line 744
    .end local v3    # "hasValue":Z
    .end local v8    # "resID":I
    :cond_4d
    const/4 v3, 0x0

    goto :goto_20

    .line 751
    .restart local v3    # "hasValue":Z
    :cond_4f
    const/16 p4, 0x0

    goto :goto_31

    .line 758
    :pswitch_52
    const-string v10, "value"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-static {v1, v0, v10, v11, v12}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v9

    .line 760
    .local v9, "value":F
    invoke-static {v2, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 761
    goto :goto_36

    .line 764
    .end local v9    # "value":F
    :pswitch_61
    const-string v10, "value"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-static {v1, v0, v10, v11, v12}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    .line 766
    .local v4, "intValue":I
    invoke-static {v2, v4}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v6

    goto :goto_36

    .line 770
    .end local v4    # "intValue":I
    :cond_70
    if-nez p4, :cond_77

    invoke-static {v2}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v6

    .line 771
    :goto_76
    goto :goto_36

    :cond_77
    invoke-static {v2}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v6

    goto :goto_76

    .line 756
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_52
        :pswitch_61
        :pswitch_36
        :pswitch_61
    .end packed-switch
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "pathErrorScale"    # F
    .param p5, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 788
    new-instance v4, Landroid/animation/ObjectAnimator;

    invoke-direct {v4}, Landroid/animation/ObjectAnimator;-><init>()V

    .local v4, "anim":Landroid/animation/ObjectAnimator;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    .line 790
    invoke-static/range {v0 .. v6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    .line 792
    return-object v4
.end method

.method private static loadPvh(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .registers 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "propertyName"    # Ljava/lang/String;
    .param p5, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    const/16 v24, 0x0

    .line 609
    .local v24, "value":Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x0

    .line 612
    .local v18, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    :cond_4
    :goto_4
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v23

    .local v23, "type":I
    const/4 v3, 0x3

    move/from16 v0, v23

    if-eq v0, v3, :cond_59

    const/4 v3, 0x1

    move/from16 v0, v23

    if-eq v0, v3, :cond_59

    .line 614
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 615
    .local v20, "name":Ljava/lang/String;
    const-string v3, "keyframe"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 616
    const/4 v3, 0x4

    move/from16 v0, p5

    if-ne v0, v3, :cond_33

    .line 617
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v3, v2}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p5

    .line 620
    :cond_33
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v7, p5

    move-object/from16 v8, p3

    invoke-static/range {v3 .. v8}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadKeyframe(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;

    move-result-object v16

    .line 622
    .local v16, "keyframe":Landroid/animation/Keyframe;
    if-eqz v16, :cond_55

    .line 623
    if-nez v18, :cond_4e

    .line 624
    new-instance v18, Ljava/util/ArrayList;

    .end local v18    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .restart local v18    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    :cond_4e
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_55
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_4

    .line 633
    .end local v16    # "keyframe":Landroid/animation/Keyframe;
    .end local v20    # "name":Ljava/lang/String;
    :cond_59
    if-eqz v18, :cond_136

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, "count":I
    if-lez v9, :cond_136

    .line 639
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/Keyframe;

    .line 640
    .local v12, "firstKeyframe":Landroid/animation/Keyframe;
    add-int/lit8 v3, v9, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/animation/Keyframe;

    .line 641
    .local v19, "lastKeyframe":Landroid/animation/Keyframe;
    invoke-virtual/range {v19 .. v19}, Landroid/animation/Keyframe;->getFraction()F

    move-result v10

    .line 642
    .local v10, "endFraction":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v10, v3

    if-gez v3, :cond_8a

    .line 643
    const/4 v3, 0x0

    cmpg-float v3, v10, v3

    if-gez v3, :cond_c0

    .line 644
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 650
    :cond_8a
    :goto_8a
    invoke-virtual {v12}, Landroid/animation/Keyframe;->getFraction()F

    move-result v21

    .line 651
    .local v21, "startFraction":F
    const/4 v3, 0x0

    cmpl-float v3, v21, v3

    if-eqz v3, :cond_9c

    .line 652
    const/4 v3, 0x0

    cmpg-float v3, v21, v3

    if-gez v3, :cond_d4

    .line 653
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 659
    :cond_9c
    :goto_9c
    new-array v0, v9, [Landroid/animation/Keyframe;

    move-object/from16 v17, v0

    .line 660
    .local v17, "keyframeArray":[Landroid/animation/Keyframe;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 661
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_a8
    if-ge v14, v9, :cond_120

    .line 662
    aget-object v16, v17, v14

    .line 663
    .restart local v16    # "keyframe":Landroid/animation/Keyframe;
    invoke-virtual/range {v16 .. v16}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_bd

    .line 664
    if-nez v14, :cond_e2

    .line 665
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 661
    :cond_bd
    :goto_bd
    add-int/lit8 v14, v14, 0x1

    goto :goto_a8

    .line 646
    .end local v14    # "i":I
    .end local v16    # "keyframe":Landroid/animation/Keyframe;
    .end local v17    # "keyframeArray":[Landroid/animation/Keyframe;
    .end local v21    # "startFraction":F
    :cond_c0
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 647
    add-int/lit8 v9, v9, 0x1

    goto :goto_8a

    .line 655
    .restart local v21    # "startFraction":F
    :cond_d4
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v12, v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 656
    add-int/lit8 v9, v9, 0x1

    goto :goto_9c

    .line 666
    .restart local v14    # "i":I
    .restart local v16    # "keyframe":Landroid/animation/Keyframe;
    .restart local v17    # "keyframeArray":[Landroid/animation/Keyframe;
    :cond_e2
    add-int/lit8 v3, v9, -0x1

    if-ne v14, v3, :cond_ee

    .line 667
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_bd

    .line 671
    :cond_ee
    move/from16 v22, v14

    .line 672
    .local v22, "startIndex":I
    move v11, v14

    .line 673
    .local v11, "endIndex":I
    add-int/lit8 v15, v22, 0x1

    .local v15, "j":I
    :goto_f3
    add-int/lit8 v3, v9, -0x1

    if-ge v15, v3, :cond_102

    .line 674
    aget-object v3, v17, v15

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_11c

    .line 679
    :cond_102
    add-int/lit8 v3, v11, 0x1

    aget-object v3, v17, v3

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v3

    add-int/lit8 v4, v22, -0x1

    aget-object v4, v17, v4

    .line 680
    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    sub-float v13, v3, v4

    .line 681
    .local v13, "gap":F
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-static {v0, v13, v1, v11}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    goto :goto_bd

    .line 677
    .end local v13    # "gap":F
    :cond_11c
    move v11, v15

    .line 673
    add-int/lit8 v15, v15, 0x1

    goto :goto_f3

    .line 685
    .end local v11    # "endIndex":I
    .end local v15    # "j":I
    .end local v16    # "keyframe":Landroid/animation/Keyframe;
    .end local v22    # "startIndex":I
    :cond_120
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v24

    .line 686
    const/4 v3, 0x3

    move/from16 v0, p5

    if-ne v0, v3, :cond_136

    .line 687
    invoke-static {}, Landroid/support/graphics/drawable/ArgbEvaluator;->getInstance()Landroid/support/graphics/drawable/ArgbEvaluator;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 691
    .end local v9    # "count":I
    .end local v10    # "endFraction":F
    .end local v12    # "firstKeyframe":Landroid/animation/Keyframe;
    .end local v14    # "i":I
    .end local v17    # "keyframeArray":[Landroid/animation/Keyframe;
    .end local v19    # "lastKeyframe":Landroid/animation/Keyframe;
    .end local v21    # "startFraction":F
    :cond_136
    return-object v24
.end method

.method private static loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    const/4 v15, 0x0

    .line 495
    .local v15, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :goto_1
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v14

    .local v14, "type":I
    const/4 v3, 0x3

    if-eq v14, v3, :cond_64

    const/4 v3, 0x1

    if-eq v14, v3, :cond_64

    .line 498
    const/4 v3, 0x2

    if-eq v14, v3, :cond_12

    .line 499
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1

    .line 503
    :cond_12
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 505
    .local v12, "name":Ljava/lang/String;
    const-string v3, "propertyValuesHolder"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 506
    sget-object v3, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_VALUES_HOLDER:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2, v3}, Landroid/support/graphics/drawable/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 509
    .local v9, "a":Landroid/content/res/TypedArray;
    const-string v3, "propertyName"

    const/4 v4, 0x3

    move-object/from16 v0, p3

    invoke-static {v9, v0, v3, v4}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 511
    .local v7, "propertyName":Ljava/lang/String;
    const-string v3, "valueType"

    const/4 v4, 0x2

    const/4 v5, 0x4

    move-object/from16 v0, p3

    invoke-static {v9, v0, v3, v4, v5}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v8

    .local v8, "valueType":I
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 515
    invoke-static/range {v3 .. v8}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadPvh(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 517
    .local v13, "pvh":Landroid/animation/PropertyValuesHolder;
    if-nez v13, :cond_51

    .line 518
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v9, v8, v3, v4, v7}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 523
    :cond_51
    if-eqz v13, :cond_5d

    .line 524
    if-nez v15, :cond_5a

    .line 525
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .restart local v15    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :cond_5a
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_5d
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 532
    .end local v7    # "propertyName":Ljava/lang/String;
    .end local v8    # "valueType":I
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v13    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_60
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1

    .line 535
    .end local v12    # "name":Ljava/lang/String;
    :cond_64
    const/16 v16, 0x0

    .line 536
    .local v16, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    if-eqz v15, :cond_7e

    .line 537
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 538
    .local v10, "count":I
    new-array v0, v10, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    .line 539
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_71
    if-ge v11, v10, :cond_7e

    .line 540
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/PropertyValuesHolder;

    aput-object v3, v16, v11

    .line 539
    add-int/lit8 v11, v11, 0x1

    goto :goto_71

    .line 543
    .end local v10    # "count":I
    .end local v11    # "i":I
    :cond_7e
    return-object v16
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V
    .registers 14
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p3, "pixelSize"    # F
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 339
    const-string v6, "duration"

    const/4 v7, 0x1

    const/16 v8, 0x12c

    invoke-static {p1, p4, v6, v7, v8}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    int-to-long v0, v6

    .line 341
    .local v0, "duration":J
    const-string v6, "startOffset"

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {p1, p4, v6, v7, v8}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    int-to-long v4, v6

    .line 343
    .local v4, "startDelay":J
    const-string v6, "valueType"

    const/4 v7, 0x7

    const/4 v8, 0x4

    invoke-static {p1, p4, v6, v7, v8}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 347
    .local v3, "valueType":I
    const-string v6, "valueFrom"

    invoke-static {p4, v6}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_69

    const-string v6, "valueTo"

    .line 348
    invoke-static {p4, v6}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 349
    const/4 v6, 0x4

    if-ne v3, v6, :cond_34

    .line 350
    const/4 v6, 0x5

    const/4 v7, 0x6

    invoke-static {p1, v6, v7}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    move-result v3

    .line 354
    :cond_34
    const/4 v6, 0x5

    const/4 v7, 0x6

    const-string v8, ""

    invoke-static {p1, v3, v6, v7, v8}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 357
    .local v2, "pvh":Landroid/animation/PropertyValuesHolder;
    if-eqz v2, :cond_47

    .line 358
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 363
    :cond_47
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 364
    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 366
    const-string v6, "repeatCount"

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {p1, p4, v6, v7, v8}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 368
    const-string v6, "repeatMode"

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {p1, p4, v6, v7, v8}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 371
    if-eqz p2, :cond_68

    .line 372
    invoke-static {p0, p2, v3, p3, p4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V

    .line 374
    :cond_68
    return-void

    .line 361
    .end local v2    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_69
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "no valueFrom or no valueTo"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "valueType"    # I
    .param p3, "pixelSize"    # F
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 387
    move-object v0, p0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 388
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    const-string v3, "pathData"

    const/4 v4, 0x1

    invoke-static {p1, p4, v3, v4}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "pathData":Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 400
    const-string v3, "AnimatorInflater"

    const-string v4, "We don\'t support moving along path yet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :goto_13
    return-void

    .line 402
    :cond_14
    const-string v3, "propertyName"

    const/4 v4, 0x0

    .line 403
    invoke-static {p1, p4, v3, v4}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    goto :goto_13
.end method

###### Class android.support.graphics.drawable.AnimatorInflaterCompat.AnonymousClass1 (android.support.graphics.drawable.AnimatorInflaterCompat$1)
.class synthetic Landroid/support/graphics/drawable/AnimatorInflaterCompat$1;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/AnimatorInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class android.support.graphics.drawable.AnimatorInflaterCompat.PathDataEvaluator (android.support.graphics.drawable.AnimatorInflaterCompat$PathDataEvaluator)
.class Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/AnimatorInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathDataEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<[",
        "Landroid/support/graphics/drawable/PathParser$PathDataNode;",
        ">;"
    }
.end annotation


# instance fields
.field private mNodeArray:[Landroid/support/graphics/drawable/PathParser$PathDataNode;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/graphics/drawable/AnimatorInflaterCompat$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/support/graphics/drawable/AnimatorInflaterCompat$1;

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>()V

    return-void
.end method

.method constructor <init>([Landroid/support/graphics/drawable/PathParser$PathDataNode;)V
    .registers 2
    .param p1, "nodeArray"    # [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 173
    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 151
    check-cast p2, [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    check-cast p3, [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->evaluate(F[Landroid/support/graphics/drawable/PathParser$PathDataNode;[Landroid/support/graphics/drawable/PathParser$PathDataNode;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(F[Landroid/support/graphics/drawable/PathParser$PathDataNode;[Landroid/support/graphics/drawable/PathParser$PathDataNode;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .registers 8
    .param p1, "fraction"    # F
    .param p2, "startPathData"    # [Landroid/support/graphics/drawable/PathParser$PathDataNode;
    .param p3, "endPathData"    # [Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .prologue
    .line 179
    invoke-static {p2, p3}, Landroid/support/graphics/drawable/PathParser;->canMorph([Landroid/support/graphics/drawable/PathParser$PathDataNode;[Landroid/support/graphics/drawable/PathParser$PathDataNode;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 180
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t interpolate between two incompatible pathData"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_e
    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    invoke-static {v1, p2}, Landroid/support/graphics/drawable/PathParser;->canMorph([Landroid/support/graphics/drawable/PathParser$PathDataNode;[Landroid/support/graphics/drawable/PathParser$PathDataNode;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 185
    :cond_1a
    invoke-static {p2}, Landroid/support/graphics/drawable/PathParser;->deepCopyNodes([Landroid/support/graphics/drawable/PathParser$PathDataNode;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 188
    :cond_20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    array-length v1, p2

    if-ge v0, v1, :cond_32

    .line 189
    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    aget-object v1, v1, v0

    aget-object v2, p2, v0

    aget-object v3, p3, v0

    invoke-virtual {v1, v2, v3, p1}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->interpolatePathDataNode(Landroid/support/graphics/drawable/PathParser$PathDataNode;Landroid/support/graphics/drawable/PathParser$PathDataNode;F)V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 193
    :cond_32
    iget-object v1, p0, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;->mNodeArray:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    return-object v1
.end method
