.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature$Naturalism;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;
.source "SandalsOfNature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Naturalism"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature$Naturalism;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact$ArtifactBuff;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;)V

    return-void
.end method


# virtual methods
.method public charge()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature$Naturalism;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/SandalsOfNature;

    .line 2
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    if-lez v1, :cond_0

    .line 3
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-ge v2, v3, :cond_0

    int-to-long v4, v2

    sub-int/2addr v3, v2

    int-to-double v2, v3

    int-to-double v6, v1

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    .line 4
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    add-double/2addr v6, v8

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    add-long/2addr v1, v4

    long-to-int v2, v1

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    :cond_0
    return-void
.end method
