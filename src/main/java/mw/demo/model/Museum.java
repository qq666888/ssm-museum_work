package mw.demo.model;

import lombok.Data;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.EqualsAndHashCode;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class Museum extends BaseModel { // 一端
    private Integer id;
    private String name;
    private String logo;
    private String picture;
    private String address;

    private List<Work> works; // 多端
}