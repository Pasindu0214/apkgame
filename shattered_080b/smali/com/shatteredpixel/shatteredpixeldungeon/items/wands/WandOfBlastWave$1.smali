.class public final Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$1;
.super Ljava/lang/Object;
.source "WandOfBlastWave.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave;->throwChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

.field public final synthetic val$finalCollided:Z

.field public final synthetic val$finalDist:I

.field public final synthetic val$initialpos:I

.field public final synthetic val$newPos:I


# direct methods
.method public constructor <init>(ILcom/shatteredpixel/shatteredpixeldungeon/actors/Char;IZI)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$1;->val$initialpos:I

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$1;->val$ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$1;->val$newPos:I

    iput-boolean p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$1;->val$finalCollided:Z

    iput p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$1;->val$finalDist:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$1;->val$initialpos:I

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$1;->val$ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-eq v0, v2, :cond_0

    .line 2
    iget-object v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$1;->val$newPos:I

    iput v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 4
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$1;->val$finalCollided:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$1;->val$ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$1;->val$finalDist:I

    add-int/lit8 v2, v1, 0x1

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$1;->val$ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$1;->val$finalDist:I

    add-int/lit8 v3, v2, 0x1

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 7
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$1;->val$ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave$1;->val$ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v0, v1, :cond_2

    .line 9
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    :cond_2
    return-void
.end method
