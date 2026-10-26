public final strictfp void au() {
    int i = 0;
    while (i < this.O) {
        en734 waypoint = this.Q[i];
        if (waypoint != null
                && waypoint.a != eo735.c
                && waypoint.a != eo735.d) {
            if (this.O <= i) {
                throw new IndexOutOfBoundsException(
                        "completeWaypoint: waypointsCount:" + this.O
                                + ", waypointIndex:" + i);
            }
            if (i == 0) {
                this.as();
            } else {
                if (this.Q.length > 0) {
                    en734 saved = this.Q[i];
                    for (int j = i; j < this.O - 1; j++) {
                        this.Q[j] = this.Q[j + 1];
                    }
                    this.Q[this.O - 1] = saved;
                }
                this.O = this.O - 1;
            }
        }
        i++;
    }
}
